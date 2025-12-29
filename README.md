# Loan Payback Prediction System

This is a Flask-based Machine Learning application for predicting
whether a loan will be paid back or defaulted.

## Features
- Single loan prediction
- Batch CSV prediction
- Save predictions to MySQL
- Export predictions as CSV
- Login authentication
- REST API backend

## Tech Stack
- Python
- Flask
- Scikit-learn
- MySQL
- HTML / CSS / JavaScript

## How to Run Locally
```bash
pip install -r requirements.txt
python app.py


## Database Setup

1. Start XAMPP (Apache & MySQL)
2. Open http://localhost/phpmyadmin
3. Create database: loan_prediction_db
4. Import file: databases/loan_prediction_db.sql