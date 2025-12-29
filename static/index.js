
/*alert("Single prediction triggered");


alert("index.js loaded");*/

const API = "http://127.0.0.1:5000";

/* ================= LOAD SCHEMA ================= */
async function loadSchema() {
    try {
        const res = await fetch(API + "/schema", {
            credentials: "include"
        });

        if (!res.ok) {
            alert("Session expired. Please login again.");
            window.location.href = "/";
            return;
        }

        const schema = await res.json();
        const form = document.getElementById("predictForm");
        form.innerHTML = "";

        schema.forEach(field => {
            const label = document.createElement("label");
            label.innerText = field.name.replace(/_/g, " ").toUpperCase();

            let input;
            if (field.type === "categorical") {
                input = document.createElement("select");
                field.values.forEach(v => {
                    const opt = document.createElement("option");
                    opt.value = v;
                    opt.innerText = v;
                    input.appendChild(opt);
                });
            } else {
                input = document.createElement("input");
                input.type = "number";
                input.step = "any";
            }

            input.id = field.name;
            input.required = true;

            form.appendChild(label);
            form.appendChild(document.createElement("br"));
            form.appendChild(input);
            form.appendChild(document.createElement("br"));
            form.appendChild(document.createElement("br"));
        });

    } catch (err) {
        console.error(err);
        alert("Failed to load schema");
    }
}

/* ================= SINGLE PREDICTION ================= */
async function predict() {
    const inputs = document.querySelectorAll(
        "#predictForm input, #predictForm select"
    );

    const payload = {};
    inputs.forEach(i => payload[i.id] = i.value);

    console.log("Payload sent:", payload);

    try {
        const res = await fetch(API + "/predict", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            credentials: "include",
            body: JSON.stringify(payload)
        });

        if (!res.ok) {
            console.error("Backend error:", await res.text());
            alert("❌ Backend error — check Flask console");
            return;
        }

        const out = await res.json();

        const box = document.getElementById("singleResult");
        box.style.display = "block";
        box.innerText = 
`Prediction: ${out.label}
Default Probability: ${out.probability_default}
Paid Probability: ${out.probability_paid}`;

    } catch (err) {
        console.error("Predict error:", err);
        alert("❌ Network or JS error");
    }
}

/* ================= BATCH PREDICTION ================= */
async function batchPredict() {
    const fileInput = document.getElementById("fileInput");

    if (!fileInput.files.length) {
        alert("Please select a CSV file");
        return;
    }

    const fd = new FormData();
    fd.append("file", fileInput.files[0]);

    const res = await fetch(API + "/batch_predict", {
        method: "POST",
        credentials: "include",
        body: fd
    });

    const out = await res.json();

    if (!res.ok) {
        alert(out.error || "Batch prediction failed");
        return;
    }

    const tbody = document.getElementById("batchResult");
    tbody.innerHTML = "";

    out.forEach((row, i) => {
        const tr = document.createElement("tr");
        tr.innerHTML = `
            <td>${i + 1}</td>
            <td>${row.label}</td>
            <td>${row.probability_default}</td>
            <td>${row.probability_paid}</td>
        `;
        tbody.appendChild(tr);
    });
}


function exportSingle() {
    window.location.href = "http://127.0.0.1:5000/export_single_prediction";
}

function exportBatch() {
    window.location.href = "http://127.0.0.1:5000/export_batch_predictions";
}



/* ================= INIT ================= */
document.addEventListener("DOMContentLoaded", () => {
    loadSchema();
    document
        .getElementById("predictBtn")
        .addEventListener("click", predict);
});
