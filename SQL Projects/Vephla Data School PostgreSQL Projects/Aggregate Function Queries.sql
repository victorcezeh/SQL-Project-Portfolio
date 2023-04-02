/* Aggregate Functions */

/*COUNT*/

SELECT * FROM Sales

SELECT COUNT (Order_Line), COUNT (Order_ID)
FROM Sales

SELECT COUNT (Order_Line) AS Count_Of_Order_Line, COUNT (Order_ID) 
AS Count_Of_Order_ID FROM Sales

SELECT * FROM Customer

SELECT COUNT (Customer_ID) AS Number_Of_Customers
FROM Customer

/* MIN & MAX */

SELECT MIN (Quantity) AS Minimum_Ordered_Quanity, MAX (Quantity) AS Maximum_Ordered_Quanity
FROM Sales

SELECT AVG (Sales) AS Average_Sales FROM Sales

SELECT AVG (Age) AS Average_Age FROM Customer
