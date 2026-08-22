# Olist E-Commerce SQL Analysis

Analysis of 100K+ Brazilian e-commerce orders across 9 relational tables using MySQL, exploring delivery performance, revenue trends, and seller rankings through SQL joins, window functions, and CTEs.

## Key Findings
- AL had the highest late-delivery rate at 23.00 of all orders
- Late-delivered orders averaged a review score of 2.57, compared to 4.21 for on-time orders — a 1.64 drop
- Health_beauty generated the highest revenue among all product categories, at 1258681.34
- The top-performing seller generated 176431.87 in total revenue, based in SP.

## Tools Used
MySQL, SQL (joins, window functions, CTEs, aggregations), Tableau Public

## Dashboard
🔗 [View live interactive dashboard on Tableau Public] [https://public.tableau.com/app/profile/rasika.gotkhindi/viz/FromCarttoDoorstepOlistE-CommerceAnalysis/Dashboard1]


## Business Questions Explored
1. What is the monthly revenue trend?
2. Which product categories generate the highest revenue?
3. Which states have the highest percentage of late deliveries?
4. Does late delivery affect customer review scores?
5. Who are the top-performing sellers by revenue within each state?
6. What payment methods do customers use, and how do they compare?

See `/sql/` for all 6 queries, each with a comment explaining its business purpose.

## Dataset
[Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) — ~100K orders from 2016-2018, covering orders, products, customers, sellers, payments, reviews, and geolocation.
