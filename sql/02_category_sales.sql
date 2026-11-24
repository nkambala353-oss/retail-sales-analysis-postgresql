SELECT
    TO_CHAR(sale_date, 'YYYY-MM') AS month,
    SUM(total_amount)             AS total_sales
FROM retail_sales
GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
ORDER BY month;