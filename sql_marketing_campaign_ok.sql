-- ============================================================
-- MARKETING CAMPAIGN PERFORMANCE ANALYSIS
-- PostgreSQL
-- ============================================================


-- ============================================================
-- 1. TABLE SETUP
-- ============================================================

DROP TABLE IF EXISTS public.marketing_campaign;

CREATE TABLE public.marketing_campaign (
    id INT PRIMARY KEY,
    year_birth INT,
    education VARCHAR(50),
    marital_status VARCHAR(50),
    income NUMERIC(12, 2),
    kidhome INT,
    teenhome INT,
    dt_customer DATE,
    recency INT,
    mntwines INT,
    mntfruits INT,
    mntmeatproducts INT,
    mntfishproducts INT,
    mntsweetproducts INT,
    mntgoldprods INT,
    numdealspurchases INT,
    numwebpurchases INT,
    numcatalogpurchases INT,
    numstorepurchases INT,
    numwebvisitsmonth INT,
    acceptedcmp3 INT,
    acceptedcmp4 INT,
    acceptedcmp5 INT,
    acceptedcmp1 INT,
    acceptedcmp2 INT,
    complain INT,
    z_costcontact INT,
    z_revenue INT,
    response INT
);


-- ============================================================
-- 2. DATA EXPLORATION
-- ============================================================

-- Check the number of records loaded into the table.
SELECT COUNT(*) AS total_records
FROM public.marketing_campaign;

-- Preview the first five records.
SELECT *
FROM public.marketing_campaign
LIMIT 5;


-- ============================================================
-- 3. MARKETING CAMPAIGN ANALYSIS
-- ============================================================

-- 3.1 How many customer records are in the dataset?
SELECT COUNT(*) AS total_customers
FROM public.marketing_campaign;
-- Result: 2,240 customers


-- 3.2 How many customers accepted each of the five marketing campaigns?
SELECT
    SUM(acceptedcmp1) AS campaign_1,
    SUM(acceptedcmp2) AS campaign_2,
    SUM(acceptedcmp3) AS campaign_3,
    SUM(acceptedcmp4) AS campaign_4,
    SUM(acceptedcmp5) AS campaign_5
FROM public.marketing_campaign;
-- Results:
-- Campaign 1: 144
-- Campaign 2: 30
-- Campaign 3: 163
-- Campaign 4: 167
-- Campaign 5: 163


-- 3.3 What is the overall acceptance rate across all marketing campaigns?
SELECT
    (
        SUM(acceptedcmp1) +
        SUM(acceptedcmp2) +
        SUM(acceptedcmp3) +
        SUM(acceptedcmp4) +
        SUM(acceptedcmp5)
    ) * 100.0 / (COUNT(*) * 5) AS acceptance_rate
FROM public.marketing_campaign;
-- Result: 5.95%


-- 3.4 How many customers belong to each education level?
SELECT
    education,
    COUNT(*) AS total_customers
FROM public.marketing_campaign
GROUP BY education
ORDER BY total_customers DESC;
-- Results:
-- Graduation: 1,127
-- PhD: 486
-- Master: 370
-- 2n Cycle: 203
-- Basic: 54


-- 3.5 What is the average income of customers who accepted
--     the most recent campaign?
SELECT
    ROUND(AVG(income), 2) AS average_income
FROM public.marketing_campaign
WHERE response = 1;
-- Result: 60,209.68


-- 3.6 Which purchase channel had the highest number of purchases?
SELECT
    SUM(numdealspurchases) AS total_deal_purchases,
    SUM(numwebpurchases) AS total_web_purchases,
    SUM(numcatalogpurchases) AS total_catalog_purchases,
    SUM(numstorepurchases) AS total_store_purchases
FROM public.marketing_campaign;
-- Result:
-- Store purchases: 12,970 (highest)


-- 3.7 How many customers visited the website more than five times
--     in the last month?
SELECT COUNT(*) AS total_web_visitors
FROM public.marketing_campaign
WHERE numwebvisitsmonth > 5;
-- Result: 1,170 customers


-- 3.8 What is the average number of days since the last purchase
--     across all customers?
SELECT
    ROUND(AVG(recency), 2) AS average_days_since_last_purchase
FROM public.marketing_campaign;
-- Result: 49.11 days


-- 3.9 How many customers made at least one purchase using a discount?
SELECT COUNT(*) AS total_customers_with_discount_purchases
FROM public.marketing_campaign
WHERE numdealspurchases > 0;
-- Result: 2,194 customers
