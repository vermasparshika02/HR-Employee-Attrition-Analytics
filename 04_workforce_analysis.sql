USE hr_analytics;

-- ==========================================
-- HR Employee Attrition Analytics
-- File: 04_workforce_analysis.sql
-- ==========================================

-- 1. Average Age by Department

SELECT
Department,
ROUND(AVG(Age),2) AS Average_Age
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Age DESC;


-- 2. Average Years at Company by Department

SELECT
Department,
ROUND(AVG(YearsAtCompany),2) AS Average_Years
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Years DESC;


-- 3. Average Total Working Years by Department

SELECT
Department,
ROUND(AVG(TotalWorkingYears),2) AS Average_Total_Working_Years
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Total_Working_Years DESC;


-- 4. Average Distance From Home by Department

SELECT
Department,
ROUND(AVG(DistanceFromHome),2) AS Average_Distance
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Distance DESC;


-- 5. Average Job Satisfaction by Department

SELECT
Department,
ROUND(AVG(JobSatisfaction),2) AS Average_Job_Satisfaction
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Job_Satisfaction DESC;


-- 6. Average Work Life Balance by Department

SELECT
Department,
ROUND(AVG(WorkLifeBalance),2) AS Average_Work_Life_Balance
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Work_Life_Balance DESC;


-- 7. Average Environment Satisfaction by Department

SELECT
Department,
ROUND(AVG(EnvironmentSatisfaction),2) AS Average_Environment_Satisfaction
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Environment_Satisfaction DESC;


-- 8. Average Performance Rating by Department

SELECT
Department,
ROUND(AVG(PerformanceRating),2) AS Average_Performance
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Performance DESC;


-- 9. Average Training Times Last Year by Department

SELECT
Department,
ROUND(AVG(TrainingTimesLastYear),2) AS Average_Training
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Training DESC;


-- 10. Average Years Since Last Promotion by Department

SELECT
Department,
ROUND(AVG(YearsSinceLastPromotion),2) AS Average_Years_Since_Promotion
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Years_Since_Promotion DESC;


-- 11. Average Years With Current Manager by Department

SELECT
Department,
ROUND(AVG(YearsWithCurrManager),2) AS Average_Years_With_Manager
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
ORDER BY Average_Years_With_Manager DESC;


-- 12. Employees by Job Level

SELECT
JobLevel,
COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY JobLevel
ORDER BY JobLevel;


-- 13. Employees by Stock Option Level

SELECT
StockOptionLevel,
COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY StockOptionLevel
ORDER BY StockOptionLevel;


-- 14. Employees by Performance Rating

SELECT
PerformanceRating,
COUNT(*) AS Employees
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY PerformanceRating
ORDER BY PerformanceRating;
