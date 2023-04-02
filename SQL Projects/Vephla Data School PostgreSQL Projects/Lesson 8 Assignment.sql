/* Tasks */

SELECT * FROM Customer

SELECT SUM (Age) AS Sum_of_age FROM Customer

SELECT * FROM Sales

SELECT AVG (sales) AS average_number_of_sales FROM Sales

SELECT AVG (Quantity) AS Average_Quanity FROM Sales

SELECT Order_ID, Profit FROM Sales
ORDER BY Profit DESC
LIMIT 10;

SELECT order_line AS Order_Number FROM Sales