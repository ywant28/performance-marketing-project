CREATE DATABASE marketing_campaign_analysis;

USE marketing_campaign_analysis;

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50)
);

CREATE TABLE platforms (
platform_id INT PRIMARY KEY,
platform_name VARCHAR(50)
);

CREATE TABLE calendar (
month_id INT PRIMARY KEY,
month_name VARCHAR(20),
year INT
);

CREATE TABLE ad_performance (

product_id INT,
platform_id INT,
month_id INT,

impressions INT,
clicks INT,
spend DECIMAL(10,2),
revenue DECIMAL(10,2),

FOREIGN KEY (product_id) REFERENCES products(product_id),
FOREIGN KEY (platform_id) REFERENCES platforms(platform_id),
FOREIGN KEY (month_id) REFERENCES calendar(month_id)

);