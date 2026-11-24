SELECT
    gender,
    COUNT(*)          AS total_orders,
    SUM(total_amount) AS total_sales
FROM retail_sales
GROUP BY gender
ORDER BY total_sales DESC;