## IBM HR Analytics - Employee Attrition Analysis

This project analyzes employee attrition using the IBM HR Analytics Employee Attrition & Performance dataset.

The goal is to understand which employee groups and workplace factors are associated with employee attrition and identify areas where HR could focus on improving employee retention.

### Business Problem

Employee attrition can increase recruitment costs, affect team productivity, and create challenges for workforce planning.
The main business question addressed in this project is:

**What factors are associated with employee attrition, which employee groups have the highest attrition rates, and what actions can HR take to improve employee retention?**

## Tools & Technologies

* **Python** – Data cleaning, feature engineering, EDA and statistical analysis
* **Pandas** – Data manipulation and analysis
* **Matplotlib** – Data visualization
* **SQL / MySQL** – Business and data analysis
* **Power BI** – HR dashboard
* **Google Colab** – Python notebooks
* **GitHub** – Project documentation and portfolio

### Dataset

The dataset contains:
* Age
* Department
* Job Role
* Monthly Income
* Business Travel
* Overtime
* Job Satisfaction
* Work-Life Balance
* Years at Company
* Years Since Last Promotion
* Attrition
* And other attributes

The dataset contains 1,470 employee records.

### Project Workflow

#### 1. Data Cleaning

The raw dataset was cleaned using Python.
Main steps included:
* Identifying constant columns and potential identifier columns
* Removing unnecessary columns
The cleaned dataset was then saved.

#### 2. Feature Engineering

Two more features were created to make employee groups easier to analyze.
These include:
* AgeGroup
* TenureGroup

#### 3. Exploratory Data Analysis

EDA was performed to identify patterns in employee attrition.
The analysis focused on:
* Overall attrition
* Age groups
* Tenure groups
* Job roles
* Overtime
* Job satisfaction
* Work-life balance
* Business travel

#### 4. Statistical Analysis

Statistical tests were used to determine whether the patterns observed during EDA were statistically significant.
The analysis includes:
* Chi-square tests for categorical variables
* T-tests for numerical variables

#### 5. SQL Analysis

The SQL analysis focuses on:

* Attrition by employee groups
* Department and job-role patterns
* Employee characteristics
* Aggregations and comparisons

### 6. Power BI Dashboard

The final analysis is presented through a two page Power BI dashboard:

**Page 1 – HR Overview**

It shows:
* Total Employees
* Employees Who Left
* Attrition Rate
* Average Age
* Average Monthly Income
* Average Years at Company
* Attrition by Department
* Attrition by Job Role
* Attrition by Age Group
* Attrition by Overtime

**Page 2 – Attrition Factors**

Explores factors associated with employee attrition like:

* Job Satisfaction
* Salary Band
* Tenure Group
* Work-Life Balance
* Business Travel
* Average Monthly Income


## Key Findings

The dataset contains **237 employees who left the company**, giving an overall attrition rate of approximately **16.1%**.

### Employee Groups

* Employees **under 25** have the highest attrition rate at approximately **39.2%**.
* Employees aged **35–44** have the lowest attrition rate at approximately **10.1%**.
* Employees with **0–2 years at the company** have the highest attrition rate at approximately **29.8%**.
* Employees with **10+ years at the company** have the lowest attrition rate at approximately **8.1%**.

### Job Role

* **Sales Representatives** have the highest attrition rate among job roles at approximately **39.8%**.
* Laboratory Technicians and Human Resources employees also show relatively high attrition rates.

### Work & Satisfaction Factors

* Employees who work **overtime** have an attrition rate of approximately **30.5%**, compared with **10.4%** among employees who do not work overtime.
* Employees with the lowest job satisfaction level have an attrition rate of approximately **22.8%**, compared with **11.3%** for the highest satisfaction level.
* Employees with the lowest work-life balance level have an attrition rate of approximately **31.3%**.
* Employees who travel frequently have an attrition rate of approximately **24.9%**, compared with **8.0%** among non-travel employees.

## Business Recommendations

Based on the analysis, HR could consider:

1. **Focus on early-tenure employees** through stronger onboarding, mentoring and regular check-ins.
2. **Review overtime practices** and workload distribution for employees working extended hours.
3. **Investigate high-attrition job roles**, particularly Sales Representative roles.
4. **Improve employee experience** by monitoring job satisfaction and work-life balance.
5. **Review frequent business travel requirements** and consider ways to reduce employee strain where possible.

These recommendations are based on observed associations in the dataset and should not be interpreted as proof that a particular factor directly causes attrition.

---

## Project Structure

```text
IBM-HR-Analytics/
│
├── data/
│   ├── raw/
│   │   └── IBM_HR_Analytics_Employee_Attrition.csv
│   │
│   └── cleaned/
│       ├── IBM_HR_Cleaned.csv
│       └── IBM_HR_Analytical.csv
│
├── notebooks/
│   ├── 01_Data_Cleaning.ipynb
│   ├── 02_Feature_Engineering.ipynb
│   ├── 03_EDA.ipynb
│   └── 04_Statistical_Analysis.ipynb
│
├── sql/
│   ├── 01_Database_Setup.sql
│   └── 02_Data_Analysis.sql
│
├── powerbi/
│   └── HR_Analytics_Dashboard.pbix
│
├── screenshots/
│   ├── 01_Dashboard_Overview.png
│   └── 02_Dashboard_Attrition_Factors.png
│
└── README.md
```

---

## Dashboard Preview

### HR Overview

![HR Overview](screenshots/01_Dashboard_Overview.png)

### Attrition Factors

![Attrition Factors](screenshots/02_Dashboard_Attrition_Factors.png)

---

## Limitations

* This dataset represents a specific set of employees and may not represent every organization.
* The analysis identifies **associations**, not direct causes of employee attrition.
* The dataset is observational, so the findings should not be interpreted as causal relationships.
* Further analysis with additional organizational and employee data could provide deeper insights.

---

## Conclusion

This project demonstrates an end-to-end HR analytics workflow using **Python, SQL and Power BI**.

The analysis identifies employee groups and workplace factors that show differences in attrition rates, while statistical analysis helps determine which relationships are statistically significant.

The final Power BI dashboard converts these findings into a business-friendly format that can support HR decision-making and employee retention strategies.
