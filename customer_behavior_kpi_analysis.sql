/*
========================================
Customer Behavior Analysis 
Key Performance Indicators (KPIs) Analysis 
========================================
*/

-- KPI 1: Revenue by Gender
SELECT gender,
       SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY gender;


-- KPI 2: High Spenders Using Discount (Above Average Spend)
SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied = 'Yes'
AND purchase_amount >= (
    SELECT AVG(purchase_amount)
    FROM customer
);


-- KPI 3: Top 5 Products by Average Rating
SELECT item_purchased,
       ROUND(AVG(review_rating::numeric),2) AS avg_rating
FROM customer
GROUP BY item_purchased
ORDER BY avg_rating DESC
LIMIT 5;


-- KPI 4: Average Purchase by Shipping Type
SELECT shipping_type,
       ROUND(AVG(purchase_amount),2) AS avg_purchase
FROM customer
WHERE shipping_type IN ('Standard','Express')
GROUP BY shipping_type;


-- KPI 5: Subscription Impact on Revenue
SELECT subscription_status,
       COUNT(customer_id) AS total_customers,
       ROUND(AVG(purchase_amount),2) AS avg_spend,
       ROUND(SUM(purchase_amount),2) AS total_revenue
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue DESC;


-- KPI 6: Discount Usage Rate by Product
SELECT item_purchased,
       ROUND(
           100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)
           / COUNT(*), 2
       ) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;


-- KPI 7: Customer Segmentation Using CTE
WITH customer_type AS (
    SELECT customer_id,
           previous_purchases,
           CASE 
               WHEN previous_purchases = 1 THEN 'New'
               WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
               ELSE 'Loyal'
           END AS customer_segment
    FROM customer
)
SELECT customer_segment,
       COUNT(*) AS total_customers
FROM customer_type
GROUP BY customer_segment;


-- KPI 8: Top 3 Products per Category (Window Function)
WITH item_counts AS (
    SELECT category,
           item_purchased,
           COUNT(customer_id) AS total_orders,
           ROW_NUMBER() OVER (
               PARTITION BY category
               ORDER BY COUNT(customer_id) DESC
           ) AS rn
    FROM customer
    GROUP BY category, item_purchased
)
SELECT category,
       item_purchased,
       total_orders
FROM item_counts
WHERE rn <= 3;


-- KPI 9: Repeat Buyers vs Subscription Status
SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status;


-- KPI 10: Revenue by Age Group
SELECT age_group,
       SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY age_group
ORDER BY total_revenue DESC;