# Task 7: Basic Sales Summary Using SQLite and Python

## Objective

The objective of this task is to use SQL inside Python to retrieve basic sales information such as total quantity sold and total revenue, and display the results using print statements and a simple bar chart.

## Tools Used

- Python
- SQLite
- Pandas
- Matplotlib
- Jupyter Notebook

## Dataset

A small SQLite database named `sales_data.db` was created for this project.

The database contains one table named `sales`.

### Table: sales

The table contains the following columns:

- `order_id` – Unique order identifier
- `product` – Product name
- `quantity` – Quantity sold
- `price` – Price of the product

## SQL Analysis

The first SQL query calculates the total quantity sold and revenue for each product using `SUM()` and `GROUP BY`.

```sql
SELECT
    product,
    SUM(quantity) AS total_qty,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;
