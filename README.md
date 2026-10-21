# E-Commerce SQL Analysis

14 business questions answered with MySQL on the Olist Brazilian
e-commerce dataset (11 tables, ~99K orders). The business scenarios
are framed around Amazon Brazil.

## Contents
- `queries/`: one SQL file per question
- `report/`: full report (problem, query, results, business insight)
- `docs/`: data dictionary
- `query-output/`: sql workbench putputs for each query

## Skills demonstrated
Joins, anti-joins, CTEs, window functions (running totals, median),
aggregation, avoiding double counting across order/item grain.

## Selected findings
- São Paulo accounts for about 71% of seller-side orders
- Credit card is used for about 75% of orders
- 55% of converted seller leads never made a sale
- Median delivery time is 10 days
- Orders peaked in November 2017 (7,544), around Black Friday

## Dataset
Brazilian E-Commerce Public Dataset (Kaggle). Not included in
this repo due to size.

## Author
Nihal S. Godse
