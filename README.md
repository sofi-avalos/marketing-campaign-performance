# Marketing Campaign Performance Analysis

## Project Overview

This project analyzes customer and marketing campaign data using PostgreSQL.

The analysis explores customer characteristics, campaign acceptance, purchasing behavior, website activity, and customer engagement with marketing campaigns.

This project was completed as part of my SQL learning journey, with the goal of applying SQL concepts to a real-world dataset and building a portfolio of practical projects.

## Dataset

The dataset contains information about **2,240 customers**, including:

* Customer demographics
* Income
* Household composition
* Purchase behavior
* Website activity
* Marketing campaign responses
* Customer complaints

The dataset was originally sourced from Kaggle:
* Marketing Campaign by Rodolfo Saldanha
* https://www.kaggle.com/datasets/rodsaldanha/arketing-campaign?resource=download


## Tools & Technologies

* PostgreSQL
* SQL
* pgAdmin

## Analysis Questions

The analysis answers the following questions:

1. How many customer records are in the dataset?
2. How many customers accepted each of the five marketing campaigns?
3. What is the overall acceptance rate across all marketing campaigns?
4. How many customers belong to each education level?
5. What is the average income of customers who accepted the most recent campaign?
6. Which purchase channel had the highest number of purchases?
7. How many customers visited the website more than five times in the last month?
8. What is the average number of days since the last purchase?
9. How many customers made at least one purchase using a discount?

## Key Findings

* The dataset contains **2,240 customers**.
* The overall acceptance rate across the five campaigns was **5.95%**.
* **Graduation** was the most common education level, with **1,127 customers**.
* Customers who responded to the most recent campaign had an average income of **60,209.68**.
* **Store purchases** were the highest-volume purchase channel, with **12,970 purchases**.
* **1,170 customers** visited the website more than five times in the previous month.
* The average recency was **49.11 days**.
* **2,194 customers** made at least one purchase using a discount.

## SQL Concepts Used

* `SELECT`
* `COUNT()`
* `SUM()`
* `AVG()`
* `ROUND()`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* Arithmetic calculations
* Filtering data
* Aggregating data
* Working with binary indicators (0/1)

## What I Learned

This project helped me practice SQL aggregation and filtering while working with a larger dataset.

It also helped me become more comfortable interpreting column meanings and translating business questions into SQL queries.

The project was built as part of my ongoing preparation for a career in data science.
