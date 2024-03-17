-- How to Find the Most Expensive and Cheapest Drinks 

SELECT c.CategoryName, d.DrinkName, d.Price
FROM Categories c
JOIN DrinkItems d ON c.CategoryID = d.CategoryID
ORDER BY d.Price DESC, c.CategoryName, d.DrinkName;

-- Check the most expensive drink

(SELECT c.CategoryName, d.DrinkName, d.Price
FROM Categories c
JOIN DrinkItems d ON c.CategoryID = d.CategoryID
WHERE d.Price = (SELECT MAX(Price) FROM DrinkItems))

UNION

-- Check the most expensive drink
(SELECT c.CategoryName, d.DrinkName, d.Price
FROM Categories c
JOIN DrinkItems d ON c.CategoryID = d.CategoryID
WHERE d.Price = (SELECT MIN(Price) FROM DrinkItems))

ORDER BY Price DESC, CategoryName, DrinkName;

--Check the most expensive drink (Except for Coffee Travellers)
(SELECT c.CategoryName, d.DrinkName, d.Price
FROM Categories c
JOIN DrinkItems d ON c.CategoryID = d.CategoryID
WHERE d.Price = (SELECT MAX(Price) FROM DrinkItems WHERE CategoryID <> 9))

UNION

-- Check the cheapest drinks (Except for Packaged Beverages)
(SELECT c.CategoryName, d.DrinkName, d.Price
FROM Categories c
JOIN DrinkItems d ON c.CategoryID = d.CategoryID
WHERE d.Price = (SELECT MIN(Price) FROM DrinkItems WHERE CategoryID <> 10))

ORDER BY Price DESC, CategoryName, DrinkName;