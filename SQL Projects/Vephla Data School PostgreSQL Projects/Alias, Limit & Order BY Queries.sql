/* Alias */

SELECT * FROM top_6_movies

SELECT Title AS Movie_Title, Year
FROM top_6_movies;

/* Limit */

SELECT * FROM Sales
LIMIT 10;

/* Order BY */

SELECT * FROM Sales
ORDER BY profit DESC
LIMIT 5;

SELECT Customer_ID, Profit
FROM Sales
ORDER BY Profit DESC
LIMIT 10;