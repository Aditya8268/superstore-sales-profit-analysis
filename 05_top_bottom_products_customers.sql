USE superstore_db;

SELECT
    product_name,
    sub_category,
    ROUND(SUM(sales), 2)  AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM superstore_clean
GROUP BY product_name, sub_category
ORDER BY total_sales DESC
LIMIT 10;


SELECT
    product_name,
    sub_category,
    ROUND(SUM(sales), 2)  AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_clean
GROUP BY product_name, sub_category
ORDER BY total_profit DESC
LIMIT 10;


SELECT
    product_name,
    sub_category,
    ROUND(SUM(sales), 2)  AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount) * 100, 1) AS avg_discount_pct
FROM superstore_clean
GROUP BY product_name, sub_category
ORDER BY total_profit ASC
LIMIT 10;


SELECT
    customer_name,
    segment,
    COUNT(DISTINCT order_id) AS num_orders,
    ROUND(SUM(sales), 2)     AS total_sales,
    ROUND(SUM(profit), 2)    AS total_profit
FROM superstore_clean
GROUP BY customer_id, customer_name, segment
ORDER BY total_sales DESC
LIMIT 10;


SELECT
    customer_name,
    segment,
    COUNT(DISTINCT order_id) AS num_orders,
    ROUND(SUM(sales), 2)     AS total_sales,
    ROUND(SUM(profit), 2)    AS total_profit,
    ROUND(AVG(discount) * 100, 1) AS avg_discount_pct
FROM superstore_clean
GROUP BY customer_id, customer_name, segment
ORDER BY total_profit ASC
LIMIT 10;