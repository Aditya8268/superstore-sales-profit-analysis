USE superstore_db;

SELECT
    order_year,
    ROUND(SUM(sales), 2)  AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM superstore_clean
GROUP BY order_year
ORDER BY order_year;

SELECT
    order_month,
    MONTHNAME(STR_TO_DATE(order_month, '%m')) AS month_name,
    ROUND(SUM(sales), 2)  AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM superstore_clean
GROUP BY order_month
ORDER BY order_month;

SELECT
    order_year,
    order_month,
    ROUND(SUM(sales), 2)  AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_clean
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

SELECT
    order_year,
    QUARTER(order_date) AS quarter,
    ROUND(SUM(sales), 2)  AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_clean
GROUP BY order_year, QUARTER(order_date)
ORDER BY order_year, quarter;