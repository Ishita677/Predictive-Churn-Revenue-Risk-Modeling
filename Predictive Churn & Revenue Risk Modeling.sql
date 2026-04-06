

CREATE DATABASE ecommerce_churn;
USE ecommerce_churn;

select * from customers;

-- Step 1 - Calculating Overall churn (First KPI)
SELECT
COUNT(*) AS total_customers,
SUM(ChurnFlag) AS churned_customers,
ROUND(100 * SUM(ChurnFlag) / COUNT(*), 2) AS churn_rate_percent
FROM customers;


-- Step 2 - Revenue at Risk
SELECT
ROUND(SUM(RevenueProxy),2) AS total_revenue_proxy,
ROUND(SUM(CASE WHEN ChurnFlag=1 THEN RevenueProxy END),2) AS churn_revenue,
ROUND(
100 * SUM(CASE WHEN ChurnFlag=1 THEN RevenueProxy END) / SUM(RevenueProxy),
2
) AS revenue_at_risk_percent
FROM customers;

-- Churn by Tenure

SELECT
TenureGroup,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned_customers,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY TenureGroup
ORDER BY TenureGroup;

-- Churn by Device Type
SELECT
PreferredLoginDevice,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY PreferredLoginDevice
ORDER BY churn_rate DESC;

-- Churn by Payment Mode
SELECT
PreferredPaymentMode,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY PreferredPaymentMode
ORDER BY churn_rate DESC;

-- Churn by Order Category
SELECT
PreferedOrderCat,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY PreferedOrderCat
ORDER BY churn_rate DESC;

-- Customer Satisfaction Impact
SELECT
SatisfactionScore,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY SatisfactionScore
ORDER BY SatisfactionScore;

-- Customer Complaints Impact
SELECT
Complain,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY Complain;

-- Exporting KPIs for Tableau

-- Tenure Churn
SELECT
TenureGroup,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY TenureGroup;

-- Payment Mode Churn
SELECT
PreferredPaymentMode,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY PreferredPaymentMode;

-- Order Category Churn
SELECT
PreferedOrderCat,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY PreferedOrderCat;


-- Complaint Impact

SELECT
Complain,
COUNT(*) AS customers,
SUM(ChurnFlag) AS churned,
ROUND(100 * SUM(ChurnFlag) / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY Complain;