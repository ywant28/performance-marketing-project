# Marketing Campaign Performance Analysis using SQL

## Project Overview
This project analyzes digital marketing campaign performance across
multiple advertising platforms. The goal is to understand which
platforms and products generate the highest revenue and return on
marketing spend.

## Business Problem
Marketing teams run campaigns across different platforms such as
Google Ads, Facebook Ads, and Instagram Ads. Management wants to
identify:

• Which platform generates the highest revenue  
• Which product performs best in advertising campaigns  
• Which campaigns deliver the best engagement  
• How revenue trends change over time  

## Dataset
The project uses four datasets:

products.csv  
platforms.csv  
calendar.csv  
ad_performance.csv  

## Database Schema

Fact Table
ad_performance

Dimension Tables
products  
platforms  
calendar  

Schema Design:

products
   |
   |
platforms ---- ad_performance ---- calendar

## Key Marketing Metrics

CTR (Click Through Rate)
CTR = Clicks / Impressions

CPC (Cost Per Click)
CPC = Spend / Clicks

ROAS (Return on Ad Spend)
ROAS = Revenue / Spend

## SQL Analysis Performed

• Revenue analysis by platform  
• Product performance ranking  
• Monthly revenue trend analysis  
• Marketing funnel analysis  
• Platform contribution to total revenue  
• CTR and ROAS performance metrics  

## Tools Used

MySQL  
SQL  
Data Analysis  

## Project Structure

dataset/
products.csv  
platforms.csv  
calendar.csv  
ad_performance.csv  

sql/
01_database_schema.sql  
02_sanity_checks.sql  
03_analysis_queries.sql  
04_advanced_analysis.sql  

documentation/
business_questions.md  
insights.md