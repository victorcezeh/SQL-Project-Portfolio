/* Reclassify customers' age group as
Between 0 - 20 - Young
Between 21 - 40 - Adults
Between 41 - 60 - Older
Between 61 & above - Aged*/

SELECT *, CASE
WHEN age <=20 THEN 'Young'
WHEN age <=40 THEN 'Adults'
WHEN age <=60 THEN 'Older'

ELSE 'Aged'
END AS age_group
FROM customer

SELECT * FROM sales
SELECT avg (sales) FROM sales

SELECT *, CASE
WHEN sales > 229.8 THEN 'Yes'
ELSE 'No'
END AS above_average_or_not
FROM sales

/*JOINING TABLES*/

SELECT COUNT (customer_id) FROM customer

CREATE TABLE west_region AS (SELECT * FROM customer
							 WHERE region = 'West')
SELECT * FROM west_region

SELECT COUNT (customer_id) FROM west_region

/*LEFT JOIN*/

SELECT customer_name, age, sales, quantity
FROM customer
LEFT JOIN
sales
ON customer.customer_id = sales.customer_id

CREATE TABLE customer_and_sales_left_join AS (SELECT customer_name, age, sales,
quantity FROM customer LEFT JOIN
sales ON customer.customer_id = sales.customer_id)
											 
SELECT * FROM customer_and_sales_left_join

/*RIGHT JOIN*/

SELECT WR.customer_name, WR.age, C.state
FROM west_region AS WR
RIGHT JOIN
customer AS C
ON WR.customer_id = C.customer_id

/*INNER JOIN*/

SELECT WR.customer_name, WR.city, S.sales
FROM west_region AS WR
INNER JOIN
sales AS S
ON WR.customer_id = S.customer_id