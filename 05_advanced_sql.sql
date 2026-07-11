USE hr_analytics;

-- ==========================================
-- HR Employee Attrition Analytics
-- File: 05_advanced_sql.sql
-- ==========================================

-- 1. Employees earning above company average salary

SELECT
EmployeeNumber,
JobRole,
Department,
MonthlyIncome
FROM `wa_fn-usec_-hr-employee-attrition`
WHERE MonthlyIncome >
(
SELECT AVG(MonthlyIncome)
FROM `wa_fn-usec_-hr-employee-attrition`
)
ORDER BY MonthlyIncome DESC;


-- 2. Top 5 highest paid employees in each department

SELECT *
FROM
(
SELECT
EmployeeNumber,
Department,
JobRole,
MonthlyIncome,
RANK() OVER
(
PARTITION BY Department
ORDER BY MonthlyIncome DESC
) AS Salary_Rank
FROM `wa_fn-usec_-hr-employee-attrition`
) t
WHERE Salary_Rank <= 5;


-- 3. Rank departments based on average salary

SELECT
Department,
ROUND(AVG(MonthlyIncome),2) AS Average_Salary,
RANK() OVER
(
ORDER BY AVG(MonthlyIncome) DESC
) AS Department_Rank
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department;


-- 4. Dense Rank employees based on salary

SELECT
EmployeeNumber,
Department,
JobRole,
MonthlyIncome,
DENSE_RANK() OVER
(
ORDER BY MonthlyIncome DESC
) AS Salary_Rank
FROM `wa_fn-usec_-hr-employee-attrition`;


-- 5. Row Number for employees by department

SELECT
EmployeeNumber,
Department,
JobRole,
ROW_NUMBER() OVER
(
PARTITION BY Department
ORDER BY EmployeeNumber
) AS Employee_No
FROM `wa_fn-usec_-hr-employee-attrition`;


-- 6. Department having highest attrition

SELECT
Department,
COUNT(*) AS Attrition_Count
FROM `wa_fn-usec_-hr-employee-attrition`
WHERE Attrition='Yes'
GROUP BY Department
HAVING COUNT(*) =
(
SELECT MAX(Total_Left)
FROM
(
SELECT COUNT(*) AS Total_Left
FROM `wa_fn-usec_-hr-employee-attrition`
WHERE Attrition='Yes'
GROUP BY Department
) x
);


-- 7. Employees with salary higher than department average

SELECT
EmployeeNumber,
Department,
JobRole,
MonthlyIncome
FROM `wa_fn-usec_-hr-employee-attrition` e
WHERE MonthlyIncome >
(
SELECT AVG(MonthlyIncome)
FROM `wa_fn-usec_-hr-employee-attrition`
WHERE Department=e.Department
);


-- 8. Common Table Expression (CTE)

WITH DepartmentSalary AS
(
SELECT
Department,
AVG(MonthlyIncome) AS AvgSalary
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
)

SELECT *
FROM DepartmentSalary
ORDER BY AvgSalary DESC;


-- 9. Running Total Salary

SELECT
EmployeeNumber,
MonthlyIncome,
SUM(MonthlyIncome) OVER
(
ORDER BY EmployeeNumber
) AS Running_Total
FROM `wa_fn-usec_-hr-employee-attrition`;


-- 10. Employees having maximum experience

SELECT
EmployeeNumber,
JobRole,
Department,
TotalWorkingYears
FROM `wa_fn-usec_-hr-employee-attrition`
WHERE TotalWorkingYears =
(
SELECT MAX(TotalWorkingYears)
FROM `wa_fn-usec_-hr-employee-attrition`
);