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




