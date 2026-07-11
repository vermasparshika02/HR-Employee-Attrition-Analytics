USE hr_analytics;

-- ==========================================
-- HR Employee Attrition Analytics
-- File: 03_salary_analysis.sql
-- ==========================================

-- 1. Average Salary of Employees

SELECT
AVG(MonthlyIncome) AS Average_Salary
FROM `wa_fn-usec_-hr-employee-attrition`;



-- 2. Minimum, Maximum and Average Salary

SELECT
MIN(MonthlyIncome) AS Minimum_Salary,
MAX(MonthlyIncome) AS Maximum_Salary,
AVG(MonthlyIncome) AS Average_Salary
FROM `wa_fn-usec_-hr-employee-attrition`;



-- 3. Average Salary by Department

SELECT
Department,
ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Salary DESC;



-- 4. Average Salary by Job Role

SELECT
JobRole,
ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY JobRole
ORDER BY Average_Salary DESC;



-- 5. Average Salary by Education Field

SELECT
EducationField,
ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY EducationField
ORDER BY Average_Salary DESC;



-- 6. Average Salary by Gender

SELECT
Gender,
ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Gender;



-- 7. Average Salary by Marital Status

SELECT
MaritalStatus,
ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY MaritalStatus
ORDER BY Average_Salary DESC;



-- 8. Average Salary by Business Travel

SELECT
BusinessTravel,
ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY BusinessTravel
ORDER BY Average_Salary DESC;



-- 9. Average Salary by Overtime

SELECT
OverTime,
ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY OverTime;



-- 10. Top 10 Highest Paid Employees

SELECT
EmployeeNumber,
JobRole,
Department,
MonthlyIncome
FROM `wa_fn-usec_-hr-employee-attrition`
ORDER BY MonthlyIncome DESC
LIMIT 10;



-- 11. Top 10 Lowest Paid Employees

SELECT
EmployeeNumber,
JobRole,
Department,
MonthlyIncome
FROM `wa_fn-usec_-hr-employee-attrition`
ORDER BY MonthlyIncome ASC
LIMIT 10;



-- 12. Employees Earning Above Average Salary

SELECT
EmployeeNumber,
Department,
JobRole,
MonthlyIncome
FROM `wa_fn-usec_-hr-employee-attrition`
WHERE MonthlyIncome >
(
SELECT AVG(MonthlyIncome)
FROM `wa_fn-usec_-hr-employee-attrition`
)
ORDER BY MonthlyIncome DESC;
