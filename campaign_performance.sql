sql-- Campaign Performance Summary
-- Identifies top and bottom performing campaigns by conversion rate

SELECT 
    campaign_name,
    COUNT(customer_id) AS total_customers,
    SUM(conversions) AS total_conversions,
    ROUND(SUM(conversions) * 100.0 / COUNT(customer_id), 2) AS conversion_rate_pct,
    SUM(revenue) AS total_revenue,
    ROUND(SUM(revenue) / NULLIF(SUM(conversions), 0), 2) AS revenue_per_conversion
FROM campaign_data
WHERE campaign_date BETWEEN '2023-01-01' AND '2024-12-31'
GROUP BY campaign_name
ORDER BY conversion_rate_pct DESC;
