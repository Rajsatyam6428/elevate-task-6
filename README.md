# 📊 Task 6: Sales Trend Analysis Using Aggregations

## 🧠 Objective
Analyzed monthly trends in sales using SQL queries, focusing on **monthly revenue** and **order volume**.

## 📁 Dataset
Table: `orders`  
Columns: `Order Date`, `amount`, `Order id`, `Product id`

## 🔍 Tasks Performed
- Grouped orders by `MONTH` and `YEAR`
- Calculated monthly `total revenue` (SUM of amount)
- Counted unique orders using `COUNT(DISTINCT Order id)`
- Identified top 3 months by revenue

## 🛠 Tools Used
- MySQL Workbench

## 📌 Key SQL Functions
- `EXTRACT(YEAR FROM date)`
- `SUM()`, `COUNT(DISTINCT)`
- `GROUP BY`, `ORDER BY`, `LIMIT`

## 📷 Screenshots
(Add screenshots of the query and results here)

## 📬 Submission
- All SQL queries are in `online_sales.sql`

