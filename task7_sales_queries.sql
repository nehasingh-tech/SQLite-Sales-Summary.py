-- Task 7: Basic Sales Summary Using SQLite

-- Product-wise quantity and revenue
SELECT
    product,
    SUM(quantity) AS total_qty,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

-- Overall sales summary
SELECT
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * price) AS total_revenue
FROM sales;
