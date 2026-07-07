USE hr_analytics;
SELECT *
FROM `wa_fn-usec_-hr-employee-attrition`
LIMIT 10;
DESCRIBE `wa_fn-usec_-hr-employee-attrition`;
SELECT COUNT(*) AS Total_Employees
FROM `wa_fn-usec_-hr-employee-attrition`;
SELECT Attrition,
       COUNT(*) AS Employee_Count
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Attrition;
SELECT Department,
       COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Employees DESC;


