USE superstore_db;

SELECT
    CASE
        WHEN discount = 0    THEN '1. No discount'
        WHEN discount <= 0.10 THEN '2. Up to 10%'
        WHEN discount <= 0.20 THEN '3. 11-20%'
        WHEN discount <= 0.30 THEN '4. 21-30%'
        WHEN discount <= 0.50 THEN '5. 31-50%'
        ELSE                       '6. Over 50%'
    END AS discount_band,
    COUNT(*)                                  AS num_orders,
    ROUND(SUM(sales), 2)                      AS total_sales,
    ROUND(SUM(profit), 2)                     AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)  AS profit_margin_pct
FROM superstore_clean
GROUP BY discount_band
ORDER BY discount_band;


SELECT
    sub_category,
    ROUND(AVG(discount) * 100, 1)             AS avg_discount_pct,
    ROUND(SUM(profit), 2)                     AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)  AS profit_margin_pct
FROM superstore_clean
GROUP BY sub_category
ORDER BY avg_discount_pct DESC;

SELECT
    region,
    ROUND(AVG(discount) * 100, 1)             AS avg_discount_pct,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)  AS profit_margin_pct
FROM superstore_clean
GROUP BY region
ORDER BY avg_discount_pct DESC;