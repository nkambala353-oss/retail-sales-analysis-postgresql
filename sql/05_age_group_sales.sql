SELECT
    CASE
        WHEN age < 25 THEN '18-24'
        WHEN age < 35 THEN '25-34'
        WHEN age < 45 THEN '35-44'
        WHEN age < 55 THEN '45-54'
        ELSE '55+'
    END               AS age_group,
    COUNT(*)          AS total_orders,
    SUM(total_amount) AS total_sales
FROM retail_sales
GROUP BY age_group
ORDER BY total_sales DESC;