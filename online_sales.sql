create database online_sales ;
use  online_sales;
select * from  details;
select * from orders;

-- Monthly Revenue and Order Volume
SELECT 
   EXTRACT(YEAR FROM STR_TO_DATE(o.`Order Date`, '%d-%m-%Y')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(o.`Order Date`, '%d-%m-%Y')) AS order_month,
    ROUND(SUM(o.amount), 2) AS total_revenue,
    COUNT(DISTINCT o.`Order ID`) AS order_volume,
    d.Category,
    d.PaymentMode
FROM 
    orders o
LEFT JOIN 
    details d ON o.`Order ID` = d.`Order ID`
GROUP BY 
    order_year, order_month, d.Category, d.PaymentMode
ORDER BY 
    order_year, order_month,total_revenue ;


SELECT 
   EXTRACT(YEAR FROM STR_TO_DATE(o.`Order Date`, '%d-%m-%Y')) AS order_year,
   EXTRACT(MONTH FROM STR_TO_DATE(o.`Order Date`, '%d-%m-%Y')) AS order_month,
   ROUND(SUM(o.amount), 2) AS total_revenue
FROM 
    orders o
LEFT JOIN 
    details d ON o.`Order ID` = d.`Order ID`
GROUP BY 
    order_year, order_month
ORDER BY 
    total_revenue DESC
LIMIT 3;



