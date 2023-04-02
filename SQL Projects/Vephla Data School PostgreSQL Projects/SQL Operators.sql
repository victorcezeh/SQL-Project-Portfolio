SELECT * FROM Sales

SELECT * FROM Sales
WHERE Quantity != 2

SELECT * FROM Customer

SELECT * FROM Customer
WHERE State = 'Florida' AND Segment = 'Consumer'

SELECT * FROM Customer
WHERE City = 'Henderson' OR City = 'Concord'

SELECT * FROM Product

SELECT * FROM Product
WHERE NOT Category = 'Furniture'
AND NOT Category = 'Technology'

SELECT * FROM Sales
WHERE Customer_ID IN ('DV-13045', 'CG-12520')

SELECT * FROM Sales
WHERE Order_Date BETWEEN '2016-12-01' AND '2016-12-31'