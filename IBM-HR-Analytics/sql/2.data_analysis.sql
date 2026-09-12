use hr_analytics;

#1. Overall attrition rate
select 
COUNT(*) as Total_Number_of_Employees,
SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Number_Employees_Left,
(SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END)) *100/COUNT(*) AS Attrition_Rate
FROM employees;

#2. Attrition rate by department
SELECT 
Department, COUNT(*) as Number_of_Employees,
SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Number_Employees_Left,
(SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END))*100/COUNT(*) AS Attrition_Rate
from employees
GROUP BY Department
ORDER BY Attrition_rate DESC;

#3. Attrition rate by job role
SELECT 
JobRole, 
COUNT(*) as Number_of_Employees,
SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Number_Employees_Left,
(SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END))*100/COUNT(*) AS Attrition_Rate
from employees
GROUP BY JobRole
ORDER BY Attrition_rate DESC;

#4. Attrition rate by overtime
SELECT 
Overtime, 
COUNT(*) as Number_of_Employees,
SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Number_Employees_Left,
(SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END))*100/COUNT(*) AS Attrition_Rate
from employees
GROUP BY Overtime
ORDER BY Attrition_rate DESC;


#5. Attrition rate by age group
SELECT 
AgeGroup, 
COUNT(*) AS Number_of_Employees,
SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Number_Employees_Left,
(SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END))*100/COUNT(*) AS Attrition_Rate
from employees
GROUP BY AgeGroup
ORDER BY Attrition_rate DESC;

#6. Attrition rate by tenure group
SELECT 
TenureGroup, 
COUNT(*) AS Number_of_Employees,
SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Number_Employees_Left,
(SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END))*100/COUNT(*) AS Attrition_Rate
from employees
GROUP BY TenureGroup
ORDER BY Attrition_rate DESC;

#7. Attrition rate by business travel
SELECT 
BusinessTravel, 
COUNT(*) AS Number_of_Employees,
SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Number_Employees_Left,
(SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END))*100/COUNT(*) AS Attrition_Rate
from employees
GROUP BY BusinessTravel
ORDER BY Attrition_rate DESC;

#8. Attrition rate by job satisfaction
SELECT 
JobSatisfaction, 
COUNT(*) AS Number_of_Employees,
SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Number_Employees_Left,
(SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END))*100/COUNT(*) AS Attrition_Rate
from employees
GROUP BY   JobSatisfaction
ORDER BY Attrition_rate DESC;

#9.Average monthly income: employees who left vs stayed
SELECT
Attrition,
COUNT(*) AS Num_Employees,
AVG(MonthlyIncome) AS avg_monthly_income
FROM employees
GROUP BY Attrition;

#10.Which employees are being paid below their own department's average?
WITH Dept_Avg AS
(SELECT Department, AVG(MonthlyIncome) AS avg_dept_income
FROM employees
GROUP BY Department)
SELECT
e.Department,
e.JobRole,
e.MonthlyIncome,
d.avg_dept_income,
e.Attrition
FROM employees e
JOIN dept_avg d ON e.Department = d.Department
WHERE e.MonthlyIncome < d.avg_dept_income;
