-- Total revenue
SELECT SUM(revenue) AS total_revenue
FROM ad_performance;

-- Revenue by platform
SELECT 
pl.platform_name,
SUM(a.revenue) revenue
FROM ad_performance a
JOIN platforms pl
ON a.platform_id = pl.platform_id
GROUP BY pl.platform_name
ORDER BY revenue DESC;

-- Top performing products
SELECT 
p.product_name,
SUM(a.revenue) revenue
FROM ad_performance a
JOIN products p
ON a.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;

-- Monthly revenue trend
SELECT 
c.month_id,
c.month_name,
SUM(a.revenue) AS revenue
FROM ad_performance a
JOIN calendar c
ON a.month_id = c.month_id
GROUP BY c.month_id, c.month_name
ORDER BY c.month_id;
