WITH cte AS(SELECT p.product_id, ROUND(SUM(u.units*p.price)/SUM(u.units),2) AS average_price
FROM Prices p JOIN UnitsSold u USING(product_id)
WHERE u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id)

SELECT * FROM cte

UNION 

SELECT product_id, 0 as average_price 
FROM Prices
WHERE product_id NOT IN(SELECT product_id from UnitsSold);
