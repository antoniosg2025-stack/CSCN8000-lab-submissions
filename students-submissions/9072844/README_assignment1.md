# Assignment 1 – Parkinson's Disease Classification (KNN, Random Forest, SVM, Decision Tree)

**Name:** Juan Antonio Sainz Gálvez
**Student ID:** 9072844
**Section:** 1
**Course:** CSCN8000 – Artificial Intelligence Algorithms and Mathematics, Conestoga College

## Files

| File | What it is |
|---|---|
| `Juan_Antonio_Sainz_Galvez_Assignment_1.ipynb` | Notebook with Questions 1–7, already executed |
| `Juan_Antonio_Sainz_Galvez_Assignment_1.html` | HTML export of the notebook |
| `Juan_Antonio_Sainz_Galvez_Assignment_1_test_predictions.csv` | Question 7: test predictions of all four models in one file |
| `requirements_assignment1.txt` | Python packages needed to run the notebook |
| `setup_assignment1_env.bat` | Creates `.venv`, installs the packages, runs the notebook and exports the HTML |

The dataset is not stored in the repository. The notebook downloads it automatically from the UCI repository
(https://archive.ics.uci.edu/dataset/470/parkinson+s+disease+classification) into `data/` and extracts the
RAR file inside the zip with the `tar` command included in Windows 10/11.

## Data and split

- 756 voice recordings from 252 patients (3 recordings per patient); 188 patients with Parkinson's, 64 healthy; 1 duplicate row removed.
- 753 numeric features, standardized with `StandardScaler` fitted on the training data only (inside each model's pipeline).
- 80/20 split with `GroupShuffleSplit` grouped by patient `id`: 602 training / 153 test recordings, no patient in both sets (avoids data leakage).

## Results on the test set

| Model | Accuracy | Parkinson's found / missed | Healthy correct / flagged as sick |
|---|---|---|---|
| **Random Forest** | **83.0 %** | 108 / 3 | 19 / 23 |
| SVM | 81.0 % | 108 / 3 | 16 / 26 |
| KNN | 79.7 % | 104 / 7 | 18 / 24 |
| Decision Tree | 76.5 % | 94 / 17 | 23 / 19 |

Random Forest is the best model. All models detect almost every Parkinson's case but struggle with the healthy class,
because about 75 % of the samples are Parkinson's (always predicting "Parkinson's" would already give ~73 % on this test set).

## How to run

Double-click `setup_assignment1_env.bat`: it creates `.venv` in this folder, installs the packages, downloads the data,
runs the notebook and exports the HTML (log in `setup_assignment1_log.txt`). Or open the notebook in VS Code, select the
`.venv` kernel and run all cells.
