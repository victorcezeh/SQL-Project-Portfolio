CREATE TABLE sales(
Order_Line Integer PRIMARY KEY,
Order_ID Text,
Order_Date Date,
Ship_Date Date,
Ship_Mode Text,
Customer_ID Varchar,
Product_ID Varchar,
Sales Float,
Quantity Integer,
Discount Float,
Profit Float,
FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID),
FOREIGN KEY (Product_ID) REFERENCES Product (Product_ID) )

SELECT * FROM Sales

/*Filtering*/

SELECT * FROM Customer

SELECT Customer_ID, Customer_Name, State
FROM Customer
WHERE State = 'Florida'

SELECT * FROM Customer
WHERE State = 'Washington'

SELECT * FROM Sales
WHERE Quantity < 3;

SELECT Customer_ID
FROM Sales
WHERE Quantity < 3;

SELECT * FROM Sales
WHERE Profit < 100

SELECT * FROM Sales
WHERE Discount = 0.2;