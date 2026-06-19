# HR-Dashboard-Project

## Overview

This project demonstrates an end-to-end HR Analytics workflow using SQL Server and Power BI. The project focuses on analyzing employee attrition, workforce demographics, job satisfaction, compensation, and work-life balance to uncover key factors affecting employee retention and support data-driven HR decisions.

## Tools Used

* SQL Server
* Power BI

---

## Dataset Overview

The dataset contains employee-related information, including:

* Employee Number
* Age
* Gender
* Department
* Job Role
* Monthly Income
* Attrition
* Overtime
* Job Satisfaction
* Environment Satisfaction
* Work-Life Balance
* Years at Company
* Total Working Years
* Education Field

---

## Data Preparation

A clean analytical view (`vw_HR_Clean`) was created in SQL Server to:

* Select relevant business attributes
* Prepare data for reporting and analysis
* Simplify Power BI integration
* Improve query readability and maintainability

---

## SQL Analysis

The following analytical queries were developed:

### 1. Employee Attrition Analysis

Calculated:

* Total Employees
* Attrition Count
* Attrition Rate

**Techniques Used**

* Aggregation Functions
* CAST()
* KPI Calculations

### 2. Department Attrition Analysis

Analyzed employee turnover across departments.

**Techniques Used**

* GROUP BY
* COUNT()
* Business KPI Analysis

### 3. Salary Band Analysis

Classified employees into salary bands and analyzed attrition patterns.

**Techniques Used**

* CASE Statements
* Common Table Expressions (CTEs)
* Aggregations

### 4. Job Role Analysis

Evaluated employee turnover across different job roles.

**Techniques Used**

* GROUP BY
* Comparative Analysis

### 5. Overtime Impact Analysis

Investigated the relationship between overtime and employee attrition.

**Techniques Used**

* Filtering
* Aggregations
* Business Analysis

### 6. High-Risk Employee Identification

Identified employees with a higher probability of attrition based on:

* Overtime Status
* Monthly Income
* Attrition Behavior

**Techniques Used**

* Conditional Logic
* Filtering
* KPI Analysis

---

## Power BI Dashboard

Developed an interactive HR Analytics dashboard featuring:

### KPIs

* Total Employees
* Attrition Count
* Attrition Rate
* Average Monthly Income

### Visualizations

* Attrition by Department
* Attrition by Job Role
* Attrition by Salary Band
* Attrition by Overtime
* Employee Distribution by Age
* Employee Distribution by Gender

### Filters

* Department
* Job Role
* Gender
* Education Field

---

## Key Insights

* Employees working overtime showed higher attrition rates.
* Lower salary bands experienced greater employee turnover.
* Certain departments and job roles were more affected by attrition.
* Employee satisfaction and work-life balance influenced employee retention.
* Compensation and career growth opportunities played a significant role in attrition.

---

## Skills Demonstrated

* SQL Querying
* Data Cleaning
* KPI Development
* Aggregation Functions
* Common Table Expressions (CTEs)
* Business Analysis
* Data Modeling
* Power BI Dashboard Development
* HR Analytics
* Data Visualization

---

## Dashboard Preview

### Power BI Dashboard

![HR Dashboard 1](Images/hr_dashboard.png)

---

## Project Structure

```text
HR-Analytics-Project
│
├── Dataset
├── SQL Queries
├── Power BI Dashboard
├── Images
└── README.md
```

---

## Certifications

- [HackerRank SQL (Advanced) Certificate](https://www.hackerrank.com/certificates/a919c82e0507)

- [HackerRank Python (Intermediate) Certificate](https://www.hackerrank.com/certificates/731f752edb9f) 

- [HackerRank Python (Basic) Certificate](https://www.hackerrank.com/certificates/256c590efe87)
    
---

## Contact

[LinkedIn](https://www.linkedin.com/in/nagi-mohamed-758662263/) 

[GitHub](https://github.com/NagiMohamed)

## Author

**Nagi Mohamed**

SQL | Power BI | Data Analytics | Data Engineering
