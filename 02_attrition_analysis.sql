SELECT JobRole,
       COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY JobRole
ORDER BY Employees DESC;
SELECT Gender,
       COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Gender;
SELECT EducationField,
       COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY EducationField
ORDER BY Employees DESC;
SELECT BusinessTravel,
       COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY BusinessTravel;
SELECT MaritalStatus,
       COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY MaritalStatus;
SELECT OverTime,
       COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY OverTime;
SHOW TABLES;
DESCRIBE `wa_fn-usec_-hr-employee-attrition`;
ALTER TABLE `wa_fn-usec_-hr-employee-attrition`
CHANGE COLUMN `ï»¿Age` Age INT;
SELECT AVG(Age) AS Average_Age
FROM `wa_fn-usec_-hr-employee-attrition`;
SELECT AVG(MonthlyIncome) AS Average_Income
FROM `wa_fn-usec_-hr-employee-attrition`;
SELECT AVG(YearsAtCompany) AS Average_Years
FROM `wa_fn-usec_-hr-employee-attrition`;
