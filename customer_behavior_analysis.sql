select * FROM customer limit 20

--total revenue geenrated by male vs female customers
SELECT gender, SUM(purchase_amount) as revenue
from customer
group by gender

--customers that use discount but still spends more than average purchase amount
SELECT customer_id, purchase_amount
from customer
where discount_applied = 'Yes' and purchase_amount >= (select AVG(purchase_amount) from customer) 

--top 5 product with highest average review rating
select item_purchased, ROUND(AVG(review_rating::numeric),2) as "Average Product Rating"
from customer
group by item_purchased
order by avg(review_rating) desc
limit 5;

--compare the avg purchase amount between standard and express shipping
SELECT shipping_type, ROUND(AVG(purchase_amount),2)
FROM customer
WHERE shipping_type in ('Standard', 'Express')
GROUP BY shipping_type

--do subscription increases the amount spend?
SELECT subscription_status,COUNT(customer_id) as total_customers,
ROUND(AVG(purchase_amount),2) as avg_spend,
ROUND(SUM(purchase_amount),2) as total_revenue
from customer
group by subscription_status
order by total_revenue, avg_spend desc;

--top 5 products with highest purchase % with discount applied
SELECT item_purchased,
ROUND(100 * SUM(CASE WHEN discount_applied='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) as discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate desc LIMIT 5;

--Segment customer into new,returning or loyal based on prev purchases and show each segment
WITH customer_type as (
select customer_id, previous_purchases, 
CASE
WHEN previous_purchases = 1 THEN 'New'
WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
ELSE 'Loyal'
END AS customer_segment
FROM customer
)

SELECT customer_segment, count(*) as "Number of customers"
from customer_type
group by customer_segment

--top 3 product from each category
WITH item_count as (
select category, 
item_purchased, 
COUNT(customer_id) as total_orders,
ROW_NUMBER() over(partition by category order by COUNT(customer_id) desc) as item_rank
from customer
group by category, item_purchased
)

select item_rank, category, item_purchased, total_orders
from item_count
where item_rank <= 3;


--are repeat buyers(more than 5 purchase) more likely to subscribe?
select subscription_status,
count(customer_id) as repeat_buyers
from customer
where previous_purchases > 5
group by subscription_status

--revenue contribution of each age group
select age_group,
SUM(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc;
