# ================= LIBRARIES =================
import pandas as pd
import numpy as np
import os
import joblib

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler, LabelEncoder
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
from catboost import CatBoostClassifier

from sklearn.metrics import accuracy_score, classification_report, roc_auc_score

# ================= CONFIG =================
RANDOM_STATE = 42
TARGET = "loan_paid_back"
DATA_PATH = "train.csv"

BASE_DIR = os.getcwd()

# ================= LOAD DATA =================
df = pd.read_csv(DATA_PATH)

X = df.drop(columns=[TARGET])
y = df[TARGET]

print("Dataset shape:", df.shape)
print("Target distribution:\n", y.value_counts())

# ================= COLUMN TYPES =================
categorical_cols = X.select_dtypes(include=["object"]).columns
numerical_cols = X.select_dtypes(exclude=["object"]).columns

print("Categorical columns:", list(categorical_cols))
print("Numerical columns:", list(numerical_cols))

# ================= ENCODE CATEGORICAL =================
X_encoded = X.copy()
label_encoders = {}

for col in categorical_cols:
    le = LabelEncoder()
    X_encoded[col] = le.fit_transform(X_encoded[col])
    label_encoders[col] = le

feature_columns = X_encoded.columns.tolist()

# ================= TRAIN TEST SPLIT =================
X_train, X_test, y_train, y_test = train_test_split(
    X_encoded,
    y,
    test_size=0.2,
    stratify=y,
    random_state=RANDOM_STATE
)

# ================= SCALING =================
scaler = StandardScaler()

X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)

# ================= MODELS =================
models = {
    "Logistic Regression": LogisticRegression(
        max_iter=1000,
        n_jobs=-1,
        random_state=RANDOM_STATE
    ),

    "Random Forest": RandomForestClassifier(
        n_estimators=300,
        random_state=RANDOM_STATE,
        n_jobs=-1
    ),

   
CatBoostClassifier(
    iterations=800,
    learning_rate=0.03,
    depth=7,
    loss_function="Logloss",
    eval_metric="AUC",
    auto_class_weights="Balanced",
    l2_leaf_reg=5,
    random_seed=RANDOM_STATE,
    verbose=0
)


}

# ================= TRAIN & EVALUATE =================
results = {}
trained_models = {}

for name, model in models.items():

    if name == "Logistic Regression":
        model.fit(X_train_scaled, y_train)
        preds = model.predict(X_test_scaled)
        probs = model.predict_proba(X_test_scaled)[:, 1]

    elif name == "Random Forest":
        model.fit(X_train, y_train)
        preds = model.predict(X_test)
        probs = model.predict_proba(X_test)[:, 1]

    else:  # CatBoost
        model.fit(X_train, y_train)
        preds = model.predict(X_test)
        probs = model.predict_proba(X_test)[:, 1]

    acc = accuracy_score(y_test, preds)
    auc = roc_auc_score(y_test, probs)

    results[name] = {
        "accuracy": acc,
        "auc": auc
    }

    trained_models[name] = model

    print(f"\n=== {name} ===")
    print("Accuracy:", acc)
    print("AUC:", auc)
    print(classification_report(y_test, preds))

# ================= SELECT BEST MODEL =================
best_model_name = max(results, key=lambda k: results[k]["auc"])
best_model = trained_models[best_model_name]

print("\n🏆 BEST MODEL SELECTED:", best_model_name)
print("AUC:", results[best_model_name]["auc"])

# ================= SAVE ONLY BEST MODEL =================
joblib.dump(best_model, "best_model.pkl")
joblib.dump(scaler, "scaler.pkl")
joblib.dump(label_encoders, "label_encoders.pkl")
joblib.dump(feature_columns, "feature_columns.pkl")

print("\n✅ Saved files:")
print("best_model.pkl")
print("scaler.pkl")
print("label_encoders.pkl")
print("feature_columns.pkl")
