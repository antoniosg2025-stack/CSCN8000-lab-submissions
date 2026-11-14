# Lab 3 – Credit Card Fraud (Logistic Regression) & Insurance Cost (Linear Regression)

**Name:** Juan Antonio Sainz Gálvez
**Student ID:** 9072844
**Section:** 1
**Course:** CSCN8000 – Artificial Intelligence Algorithms and Mathematics, Conestoga College

## Files

| File | What it is |
|---|---|
| `Juan_Antonio_Sainz_Galvez_9072844_Sec1_Lab3.ipynb` | Notebook with Part A and Part B, already executed |
| `Juan_Antonio_Sainz_Galvez_9072844_Sec1_Lab3.html` | HTML export of the notebook |
| `requirements_lab3.txt` | Python packages needed to run the notebook |

The datasets are not in the repository (the credit card CSV is 150 MB, above GitHub's limit). Download them from Kaggle and keep the zip files, without unzipping, next to the notebook:
`archive_card.zip` (https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud) and `archive_insurance.zip` (https://www.kaggle.com/datasets/mirichoi0218/insurance).

## Part A – Credit card fraud detection (logistic regression)

- 284,807 transactions; 1,081 exact duplicates removed; only 0.167 % are fraud.
- `Time` and `Amount` standardised (scaler fitted on training data only); stratified 70/30 split.

| Model | Test accuracy | Frauds caught (of 142) | Fraud precision | False alarms |
|---|---|---|---|---|
| Logistic regression | 99.91 % | 81 (57 %) | 84 % | 15 |
| Logistic regression, balanced class weights | 97.33 % | 126 (89 %) | 5 % | 2,257 |

Always predicting "genuine" already gives 99.83 % accuracy, so recall and precision on the fraud class are reported alongside accuracy. ROC-AUC of the default model: 0.965.

## Part B – Insurance cost prediction (linear regression)

- 1,338 people; 1 duplicate removed; `sex`, `smoker`, `region` one-hot encoded; 70/30 split.
- Test R² = 0.772, MAE ≈ $4,180, RMSE ≈ $6,240 per person per year (train R² = 0.736, so no overfitting).
- Smoking adds about $22,900 a year; each year of age about $250; each BMI point about $330.

## How to run

Double-click `setup_lab3_env.bat`: it creates `.venv` in this folder, installs the packages, runs the notebook and exports the HTML (log in `setup_lab3_log.txt`). Or open the notebook in VS Code, select the `.venv` kernel and run all cells.
