CREATE DATABASE HR_Analytics;
USE HR_Analytics;

CREATE VIEW vw_HR_Clean AS
SELECT
    [Age],
    [Attrition],
    [BusinessTravel],
    [DailyRate],
    [Department],
    [DistanceFromHome],
    [Education],
    [EducationField],
    [EmployeeNumber],
    [EnvironmentSatisfaction],
    [Gender],
    [HourlyRate],
    [JobInvolvement],
    [JobLevel],
    [JobRole],
    [JobSatisfaction],
    [MaritalStatus],
    [MonthlyIncome],
    [MonthlyRate],
    [NumCompaniesWorked],
    [OverTime],
    [PercentSalaryHike],
    [PerformanceRating],
    [RelationshipSatisfaction],
    [StockOptionLevel],
    [TotalWorkingYears],
    [TrainingTimesLastYear],
    [WorkLifeBalance],
    [YearsAtCompany],
    [YearsInCurrentRole],
    [YearsSinceLastPromotion],
    [YearsWithCurrManager]
FROM [HR_Analytics].[dbo].[HR Employee Attrition];

--Attrition Rate
SELECT 
    COUNT(*) AS TotalEmployees,
    SUM(CAST(Attrition AS INT)) AS AttritionCount,
    Cast(sum(cast(attrition as int))*100.0/count(*)as decimal(5,2)) as AttritionRate
FROM vw_HR_Clean

--Attrition by Department
Select
Department,
count(*) as AttritionCount
from vw_hr_clean
WHERE Attrition = 1
group by Department;

--Attrition by Salary LevelAttrition by Salary Level
select
case
when monthlyincome < 3000 then 'low'
when monthlyincome < 7000 then 'medium'
else 'high'
end as SalaryBand,
count(*) AttritionCount
FROM vw_hr_clean
where attrition = 1
group by case
when monthlyincome < 3000 then 'low'
when monthlyincome < 7000 then 'medium'
else 'high'
end;

--Attrition by Years at Company
SELECT 
    YearsAtCompany,
    COUNT(*) AS TotalEmployees
FROM vw_HR_Clean
where Attrition = 1
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

--Attrition by Job Role
Select
jobrole,
count(*) as totalEmployees
FROM vw_HR_Clean
where Attrition = 1
GROUP BY jobrole
ORDER BY jobrole;

--Overtime Impact
SELECT 
    OverTime,
    COUNT(*) AS TotalEmployees
FROM vw_HR_Clean
where attrition = 1
GROUP BY OverTime;

--Education vs Attrition
SELECT 
    EducationField,
    COUNT(*) AS TotalEmployees,
    SUM(cast(Attrition as int)) AS AttritionCount
FROM vw_HR_Clean
GROUP BY EducationField
ORDER BY AttritionCount DESC;

--High Risk Employees
SELECT *,
count(*) as totalriskemployees
FROM vw_HR_Clean
WHERE Attrition = 1
  AND OverTime = 1
  AND MonthlyIncome < 5000;

