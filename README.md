# Titanicdata_analysis
🔹 Overview
*Data preprocessing and survival prediction using Decision Tree Classifier (Python + Scikit-learn + pandas)
*Exploratory and statistical analysis using SQL queries
*A comparison between model predictions and the baseline gender-based submission

📁 Dataset Overview
The data is split into:
*train.csv: Training dataset with labeled survival data.
*test.csv: Test dataset used for prediction (unlabeled).
*gender_submission.csv: A baseline prediction assuming all females survived.

🔧 Tools Used
*Python (Pandas, Scikit-learn)
*MySQL (for SQL analysis)
*Jupyter Notebook (for development and visualization)

📊 SQL-Based Analysis (MySQL)
Key SQL Queries:
*Total passengers who survived
*Survival rate by class and gender
*Age group comparison: children vs adults
*Duplicates in test/train names
*Average fare and age by embarkation port

🌲 Machine Learning (Decision Tree)
Steps:
*Clean missing values (Age, Fare, Embarked)
*Convert categorical features to numeric (Sex, Embarked)
*Select features: ['Pclass', 'Sex', 'Age', 'SibSp', 'Parch', 'Fare', 'Embarked']
*Train Decision Tree using scikit-learn
*Predict on test.csv
*Compare predictions with gender_submission.csv

🖼️ SQL Output Samples

*<img width="592" height="193" alt="Screenshot 2025-07-24 192830" src="https://github.com/user-attachments/assets/49174c18-4a4a-4552-b0c3-09b50b0e43ec" />
*<img width="608" height="166" alt="Screenshot 2025-07-24 192848" src="https://github.com/user-attachments/assets/a9c1b8a5-2879-4520-a05b-8722450c3e5a" />
*<img width="360" height="183" alt="Screenshot 2025-07-24 192958" src="https://github.com/user-attachments/assets/fbf5bfbc-bfc9-494a-be8b-ff139365d4df" />
*<img width="812" height="319" alt="Screenshot 2025-07-24 193042" src="https://github.com/user-attachments/assets/6ea5ff14-3616-467f-bbe6-918e8ebfa860" />
*<img width="654" height="263" alt="Screenshot 2025-07-24 193120" src="https://github.com/user-attachments/assets/559f015e-179e-4eba-8420-a2d891e1153b" />
