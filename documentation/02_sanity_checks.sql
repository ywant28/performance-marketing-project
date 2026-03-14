-- Check NULL values in products
SELECT *
FROM products
WHERE product_id IS NULL;

-- Check duplicate products
SELECT product_id, COUNT(*)
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;

-- Check NULL platforms
SELECT *
FROM platforms
WHERE platform_id IS NULL;

-- Check NULL calendar values
SELECT *
FROM calendar
WHERE month_id IS NULL;

-- Check invalid clicks
SELECT *
FROM ad_performance
WHERE clicks > impressions;

-- Check negative spend
SELECT *
FROM ad_performance
WHERE spend < 0;

-- Check negative revenue
SELECT *
FROM ad_performance
WHERE revenue < 0;

-- Check missing foreign keys
SELECT product_id
FROM ad_performance
WHERE product_id NOT IN
(SELECT product_id FROM products);