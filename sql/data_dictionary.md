# Data Dictionary

## products table

| Column       | Description                        |
| ------------ | ---------------------------------- |
| product_id   | Unique identifier for each product |
| product_name | Name of the product                |
| category     | Product category                   |

## platforms table

| Column        | Description                                        |
| ------------- | -------------------------------------------------- |
| platform_id   | Unique platform identifier                         |
| platform_name | Advertising platform (Google, Facebook, Instagram) |

## calendar table

| Column     | Description             |
| ---------- | ----------------------- |
| month_id   | Unique month identifier |
| month_name | Name of the month       |
| year       | Year of campaign        |

## ad_performance table

| Column      | Description              |
| ----------- | ------------------------ |
| product_id  | Product being advertised |
| platform_id | Advertising platform     |
| month_id    | Month of campaign        |
| impressions | Number of ad views       |
| clicks      | Number of clicks         |
| spend       | Advertising cost         |
| revenue     | Revenue generated        |
