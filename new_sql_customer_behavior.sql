SELECT * FROM customer_shopping_behavior.customer_shopping_behavior;
USE customer_shopping_behavior;
 SELECT 
   `Item Purchased`, -- If it has a space, wrap it in backticks
     AVG(`Review Rating`) AS avg_rating
 FROM 
     customer_shopping_behavior
 GROUP BY 
     `Item Purchased`
 ORDER BY 
    avg_rating DESC
LIMIT 5;
SELECT 
    `Shipping Type`, 
    ROUND(AVG('Purchase Amount(USD)'), 2) AVG_PURCHASE_AMOUNT 
 FROM    customer_shopping_behavior
WHERE 
    `Ship--ping Type` IN ('Standard', 'Express')
GROUP BY 
    `Shipping Type`;
    SELECT 
    item_purchased, 
    AVG(review_rating) AS avg_rating
FROM 
    customer_shopping_behavior
GROUP BY 
    item_purchased
ORDER BY 
    avg_rating DESC
LIMIT 5;
sELECT
    `Subscription Status`,
    COUNT(`Customer ID`) AS total_customers,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_spends,
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS total_revenue
FROM `customer_shopping_behavior`
GROUP BY `Subscription Status`
ORDER BY total_revenue DESC, avg_spends DESC;
SELECT `Item Purchased`, 
       ROUND(100 * SUM(CASE WHEN `Discount Applied` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Discount_Rate
FROM customer_shopping_behavior
GROUP BY`Item Purchased`
ORDER BY Discount_Rate DESC
LIMIT 5;select `subscription status`,
count(*) as repeat_buyers 
from customer_shopping_behavior
where `Previous Purchases`> 5 
group by `Subscription Status`;
select `Age`,
sum (`purchase amount(USD)`) as total_revenue 
from customer_shopping_behavior
group by `Age`
order by total_revenue desc;

SELECT
    `Age`,
    SUM(`Purchase Amount (USD)`) AS total_revenue
FROM customer_shopping_behavior
GROUP BY `Age`
ORDER BY total_revenue DESC;