# Assignment 2 – Boston Housing Regression Models

**Name:** Juan Antonio Sainz Gálvez
**Student ID:** 9072844
**Section:** 1
**Course:** CSCN8000 – Artificial Intelligence Algorithms and Mathematics, Conestoga College

Predicts MEDV (median value of owner-occupied homes in $1000's) with seven models: Linear Regression (multilinear),
XGBoost, Decision Tree, Random Forest, Logistic Regression, Lasso (L1) and Ridge (L2).

## Files

| File | What it is |
|---|---|
| `Antonio_Sainz_Assignment_2.ipynb` | Notebook with Questions 1–7, already executed |
| `Antonio_Sainz_Assignment_2.html` | HTML export of the notebook |
| `Antonio_Sainz_Assignment_2_test_predictions.csv` | Question 7: test predictions of all seven models in one file |
| `data/boston_housing.csv` | Boston Housing dataset (Kaggle, 506 rows, 14 columns) |
| `requirements_assignment2.txt` | Python packages needed to run the notebook |

## Results (test set, 20% of the data)

| Model | Accuracy (score) | MAE ($1000s) | RMSE ($1000s) |
|---|---|---|---|
| Random Forest (best) | 0.8795 | 2.21 | 3.18 |
| XGBoost | 0.8771 | 2.25 | 3.21 |
| Lasso (L1) | 0.7811 | 3.07 | 4.28 |
| Ridge (L2) | 0.7791 | 3.11 | 4.30 |
| Linear Regression | 0.7789 | 3.11 | 4.30 |
| Decision Tree | 0.7204 | 3.38 | 4.84 |
| Logistic Regression | 0.1275 (class accuracy) | 3.69 | 5.45 |

## How to run

```
python -m venv .venv
.venv\Scripts\python -m pip install -r requirements_assignment2.txt
.venv\Scripts\jupyter nbconvert --to notebook --execute --inplace Antonio_Sainz_Assignment_2.ipynb
.venv\Scripts\jupyter nbconvert --to html Antonio_Sainz_Assignment_2.ipynb
```

The notebook reads `data/boston_housing.csv` and writes the predictions CSV to `outputs/`.

**GitHub Pages (HTML):** https://antoniosg2025-stack.github.io/CSCN8000-lab-submissions/students-submissions/9072844/Antonio_Sainz_Assignment_2.html
