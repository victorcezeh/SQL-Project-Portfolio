/* GROUP BY */

SELECT * FROM Customer

SELECT COUNT (Customer_Name) AS Number_of_customers_in_the_region,
COUNT (Segment) AS Number_of_segment_in_the_region, Region
FROM Customer
GROUP BY Region;

SELECT * FROM Sales

SELECT Customer_ID, COUNT (Customer_ID) AS Count_of_purchase, SUM (Sales) 
AS Sum_of_purchase FROM Sales
GROUP BY Customer_ID
ORDER BY Sum_of_purchase DESC
LIMIT 10;

SELECT COUNT (Customer_name) AS Number_of_Customers, Region, AVG (Age)
FROM Customer
GROUP BY Region
HAVING AVG (age) > 44.3;