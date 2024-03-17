SELECT d.DrinkName, t.Name AS Topping
FROM DrinkItems d
JOIN DrinkItemToppings dt ON d.DrinkItemID = dt.DrinkItemID
JOIN Toppings t ON dt.ToppingID = t.ToppingID
WHERE t.Name = 'Whipped Cream'
ORDER BY d.DrinkName ASC;

SELECT d.DrinkName, c.CategoryName, dt.TypeName AS DrinkType
FROM DrinkItems d
JOIN Categories c ON d.CategoryID = c.CategoryID
JOIN DrinkTypes dt ON c.TypeID = dt.TypeID
JOIN DrinkItemToppings dit ON d.DrinkItemID = dit.DrinkItemID
JOIN Toppings t ON dit.ToppingID = t.ToppingID
WHERE t.Name = 'Whipped Cream' 
ORDER BY dt.TypeName, c.CategoryName, d.DrinkName;

SELECT 
    d.DrinkName, 
    d.Price,
    COUNT(t.ToppingID) AS NumberOfToppings,
    STRING_AGG(t.Name, ', ') AS ToppingsList
FROM DrinkItems d
JOIN DrinkItemToppings dt ON d.DrinkItemID = dt.DrinkItemID
JOIN Toppings t ON dt.ToppingID = t.ToppingID
GROUP BY d.DrinkName, d.Price
HAVING COUNT(t.ToppingID) > 1
ORDER BY NumberOfToppings DESC, d.Price DESC;

--Top 3 most used toppings
SELECT t.Name, COUNT(dt.ToppingID) AS ToppingCount
FROM Toppings t
JOIN DrinkItemToppings dt ON t.ToppingID = dt.ToppingID
GROUP BY t.Name
ORDER BY ToppingCount DESC
LIMIT 3;