from flask import Flask, request, jsonify, session, render_template
from flask_cors import CORS
import mysql.connector
import joblib
import pandas as pd
import os
from functools import wraps
from flask import send_file
import io


# ================= APP CONFIG =================
app = Flask(__name__)
app.secret_key = "change_this_secret_key"

app.config.update(
    SESSION_COOKIE_SAMESITE="Lax",
    SESSION_COOKIE_SECURE=False
)

CORS(app, supports_credentials=True)

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
THRESHOLD = 0.5

# ================= DATABASE =================
def get_user_db():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="users"
    )



def get_prediction_db():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="loan_prediction_db"
    )




# ================= LOAD MODEL =================
model = joblib.load(os.path.join(BASE_DIR, "best_model.pkl"))
scaler = joblib.load(os.path.join(BASE_DIR, "scaler.pkl"))
label_encoders = joblib.load(os.path.join(BASE_DIR, "label_encoders.pkl"))
feature_columns = joblib.load(os.path.join(BASE_DIR, "feature_columns.pkl"))

# ================= AUTH =================
def login_required(f):
    @wraps(f)
    def wrapper(*args, **kwargs):
        if "user" not in session:
            return jsonify({"error": "Unauthorized"}), 401
        return f(*args, **kwargs)
    return wrapper

# ================= PAGES =================
@app.route("/")
def home():
    return render_template("login.html")

@app.route("/index.html")
@login_required
def index():
    return render_template("index.html")

# ================= LOGIN =================
@app.route("/login", methods=["POST"])
def login():
    data = request.get_json()
    conn = get_user_db()
    cur = conn.cursor(dictionary=True)

    cur.execute(
        "SELECT * FROM users WHERE username=%s AND password=%s",
        (data["username"], data["password"])
    )

    user = cur.fetchone()
    cur.close()
    conn.close()

    if not user:
        return jsonify({"error": "Invalid credentials"}), 401

    session["user"] = user["username"]
    return jsonify({"message": "Login successful"})

@app.route("/logout", methods=["POST"])
def logout():
    session.clear()
    return jsonify({"message": "Logged out"})

# ================= SCHEMA =================
@app.route("/schema", methods=["GET"])
@login_required
def schema():
    out = []
    for col in feature_columns:
        if col in label_encoders:
            out.append({
                "name": col,
                "type": "categorical",
                "values": list(label_encoders[col].classes_)
            })
        else:
            out.append({
                "name": col,
                "type": "numeric"
            })
    return jsonify(out)

# ================= SINGLE PREDICTION =================
@app.route("/predict", methods=["POST"])
@login_required
def predict():
    try:
        data = request.get_json()
        row = []

        for col in feature_columns:
            val = data[col]
            if col in label_encoders:
                val = label_encoders[col].transform([val])[0]
            else:
                if val == "" or val is None:
                    raise ValueError(f"{col} is empty")
                val = float(val)
            row.append(val)

        X = scaler.transform(pd.DataFrame([row], columns=feature_columns))
        proba = model.predict_proba(X)[0]

        p_default = float(proba[1])
        p_paid = float(proba[0])

        prediction_label = (
            "Loan will NOT be Paid Back"
            if p_default >= THRESHOLD
            else "Loan will be Paid Back"
        )

        # ================= SAVE TO DATABASE =================
        conn = get_prediction_db()
        cur = conn.cursor()

        cur.execute("""
            INSERT INTO loan_predictions (
                annual_income,
                debt_to_income_ratio,
                credit_score,
                loan_amount,
                interest_rate,
                gender,
                marital_status,
                education_level,
                employment_status,
                loan_purpose,
                grade_subgrade,
                prediction,
                probability_default,
                probability_paid,
                model_name,
                threshold
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """, (
            data["annual_income"],
            data["debt_to_income_ratio"],
            data["credit_score"],
            data["loan_amount"],
            data["interest_rate"],
            data["gender"],
            data["marital_status"],
            data["education_level"],
            data["employment_status"],
            data["loan_purpose"],
            data["grade_subgrade"],
            prediction_label,
            p_default,
            p_paid,
            "RandomForestClassifier",
            THRESHOLD
        ))

        conn.commit()
        cur.close()
        conn.close()

        # ================= RESPONSE =================
        return jsonify({
            "label": prediction_label,
            "probability_default": round(p_default, 4),
            "probability_paid": round(p_paid, 4)
        })

    except Exception as e:
        print("❌ ERROR IN /predict:", e)
        return jsonify({"error": str(e)}), 500
    



    # ================= EXPORT SINGLE PREDICTION =================
@app.route("/export_single_prediction", methods=["GET"])
@login_required
def export_single_prediction():
    try:
        conn = get_prediction_db()

        query = """
            SELECT
                annual_income,
                debt_to_income_ratio,
                credit_score,
                loan_amount,
                interest_rate,
                gender,
                marital_status,
                education_level,
                employment_status,
                loan_purpose,
                grade_subgrade,
                prediction,
                probability_default,
                probability_paid,
                model_name,
                threshold,
                created_at
            FROM loan_predictions
            ORDER BY created_at DESC
            LIMIT 1
        """

        df = pd.read_sql(query, conn)
        conn.close()

        output = io.StringIO()
        df.to_csv(output, index=False)
        output.seek(0)

        return send_file(
            io.BytesIO(output.getvalue().encode()),
            mimetype="text/csv",
            as_attachment=True,
            download_name="single_prediction.csv"
        )

    except Exception as e:
        return jsonify({"error": str(e)}), 500




# ================= BATCH PREDICTION =================
# ================= BATCH PREDICTION =================
@app.route("/batch_predict", methods=["POST"])
@login_required
def batch_predict():
    try:
        file = request.files["file"]
        df = pd.read_csv(file)

        # ================= ENCODE CATEGORICALS =================
        df_encoded = df.copy()

        for col in feature_columns:
            if col in label_encoders:
                df_encoded[col] = label_encoders[col].transform(df[col])
            else:
                df_encoded[col] = df[col].astype(float)

        # ================= PREDICT =================
        X = scaler.transform(df_encoded[feature_columns])
        probs = model.predict_proba(X)

        # ================= SAVE TO DATABASE =================
        conn = get_prediction_db()
        cur = conn.cursor()

        results = []

        for i, p in enumerate(probs):
            p_default = float(p[1])
            p_paid = float(p[0])

            prediction_label = (
                "Loan will NOT be Paid Back"
                if p_default >= THRESHOLD
                else "Loan will be Paid Back"
            )

            row = df.iloc[i]

            cur.execute("""
                INSERT INTO loan_predictions (
                    annual_income,
                    debt_to_income_ratio,
                    credit_score,
                    loan_amount,
                    interest_rate,
                    gender,
                    marital_status,
                    education_level,
                    employment_status,
                    loan_purpose,
                    grade_subgrade,
                    prediction,
                    probability_default,
                    probability_paid,
                    model_name,
                    threshold
                ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """, (
                float(row["annual_income"]),
                float(row["debt_to_income_ratio"]),
                int(row["credit_score"]),
                float(row["loan_amount"]),
                float(row["interest_rate"]),
                str(row["gender"]),
                str(row["marital_status"]),
                str(row["education_level"]),
                str(row["employment_status"]),
                str(row["loan_purpose"]),
                str(row["grade_subgrade"]),
                prediction_label,
                float(p_default),
                float(p_paid),
                "RandomForestClassifier",
                float(THRESHOLD)
            ))

            results.append({
                "label": prediction_label,
                "probability_default": round(p_default, 4),
                "probability_paid": round(p_paid, 4)
            })

        conn.commit()
        cur.close()
        conn.close()

        return jsonify(results)

    except Exception as e:
        print("❌ ERROR IN /batch_predict:", e)
        return jsonify({"error": str(e)}), 500
    

    # ================= EXPORT BATCH PREDICTIONS =================
@app.route("/export_batch_predictions", methods=["GET"])
@login_required
def export_batch_predictions():
    try:
        conn = get_prediction_db()

        query = """
            SELECT
                annual_income,
                debt_to_income_ratio,
                credit_score,
                loan_amount,
                interest_rate,
                gender,
                marital_status,
                education_level,
                employment_status,
                loan_purpose,
                grade_subgrade,
                prediction,
                probability_default,
                probability_paid,
                model_name,
                threshold,
                created_at
            FROM loan_predictions
            ORDER BY created_at DESC
        """

        df = pd.read_sql(query, conn)
        conn.close()

        output = io.StringIO()
        df.to_csv(output, index=False)
        output.seek(0)

        return send_file(
            io.BytesIO(output.getvalue().encode()),
            mimetype="text/csv",
            as_attachment=True,
            download_name="batch_predictions.csv"
        )

    except Exception as e:
        return jsonify({"error": str(e)}), 500



# ================= RUN =================
if __name__ == "__main__":
    app.run(debug=True)
    

  