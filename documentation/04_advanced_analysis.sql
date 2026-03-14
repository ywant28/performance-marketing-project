-- CTR by platform
SELECT 
pl.platform_name,
SUM(a.clicks)/SUM(a.impressions) AS CTR
FROM ad_performance a
JOIN platforms pl
ON a.platform_id = pl.platform_id
GROUP BY pl.platform_name
ORDER BY CTR DESC;

-- ROAS by platform
SELECT 
pl.platform_name,
SUM(a.revenue)/SUM(a.spend) AS ROAS
FROM ad_performance a
JOIN platforms pl
ON a.platform_id = pl.platform_id
GROUP BY pl.platform_name
ORDER BY ROAS DESC;

-- Product ranking by revenue
SELECT 
p.product_name,
SUM(a.revenue) revenue,
RANK() OVER (ORDER BY SUM(a.revenue) DESC) AS product_rank
FROM ad_performance a
JOIN products p
ON a.product_id = p.product_id
GROUP BY p.product_name;

-- Platform revenue contribution
SELECT 
pl.platform_name,
SUM(a.revenue) revenue,
SUM(a.revenue)*100/
(SELECT SUM(revenue) FROM ad_performance) AS revenue_percentage
FROM ad_performance a
JOIN platforms pl
ON a.platform_id = pl.platform_id
GROUP BY pl.platform_name;