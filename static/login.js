const API = "http://127.0.0.1:5000";

document.getElementById("loginForm").addEventListener("submit", async (e) => {
    e.preventDefault();

    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    try {
        const res = await fetch(API + "/login", {
            method: "POST",
            credentials: "include",   // REQUIRED for Flask session
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({ username, password })
        });

        const out = await res.json();

        if (!res.ok) {
            document.getElementById("loginError").innerText =
                out.error || "Invalid username or password";
            return;
        }

        // ✅ Redirect to Flask route (ABSOLUTE PATH)
        window.location.href = "/index.html";

    } catch (err) {
        console.error(err);
        document.getElementById("loginError").innerText =
            "Cannot connect to server";
    }
});
