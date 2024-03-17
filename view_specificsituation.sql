--Finding Cold Pistachio-Flavored Drinks
SELECT d.DrinkName, dt.Temperature
FROM DrinkItems d
JOIN Categories c ON d.CategoryID = c.CategoryID
JOIN DrinkTypes dt ON c.TypeID = dt.TypeID
WHERE d.DrinkName LIKE '%Pistachio%'
AND dt.Temperature = 'Cold';


--Finding Decaf Drinks
SELECT d.DrinkName,d.Price, dt.Temperature
FROM DrinkItems d
JOIN Categories c ON d.CategoryID = c.CategoryID
JOIN DrinkTypes dt ON c.TypeID = dt.TypeID
WHERE (d.DrinkName ILIKE '%creme%'
   OR d.DrinkName ILIKE '%decaf%'
   OR d.DrinkName ILIKE '%apple%'
   OR d.DrinkName ILIKE '%milk%'
   OR d.DrinkName ILIKE '%steamer%'
   OR d.DrinkName ILIKE '%refreshers%')
   AND NOT (d.DrinkName ILIKE '%coffee with milk%'
            OR d.DrinkName ILIKE '%matcha%'
            OR d.DrinkName ILIKE '%chai%')
	ORDER BY d.Price DESC;

--Finding Decaf Drinks except Coffee Travellers and Packaged Beverages
SELECT d.DrinkName, d.Price, dt.Temperature
FROM DrinkItems d
JOIN Categories c ON d.CategoryID = c.CategoryID
JOIN DrinkTypes dt ON c.TypeID = dt.TypeID
WHERE (d.DrinkName ILIKE '%creme%'
   OR d.DrinkName ILIKE '%decaf%'
   OR d.DrinkName ILIKE '%apple%'
   OR d.DrinkName ILIKE '%milk%'
   OR d.DrinkName ILIKE '%steamer%'
   OR d.DrinkName ILIKE '%refreshers%')
   AND NOT (d.DrinkName ILIKE '%coffee with milk%'
            OR d.DrinkName ILIKE '%matcha%'
            OR d.DrinkName ILIKE '%chai%')
   AND c.CategoryName NOT IN ('Coffee Travellers', 'Packaged Beverages')
ORDER BY d.Price DESC;

--Making Drinks with Blode Espresso
Select d.DrinkName, d.price, dt.Temperature
FROM DrinkItems d
JOIN Categories c ON d.CategoryID = c.CategoryID
JOIN DrinkTypes dt ON c.TypeID = dt.TypeID
Where d.Description ILIKE '%Blonde%'
ORDER BY dt.Temperature DESC;

-- Drinks include Strawberry
Select d.DrinkName, d.price, dt.Temperature
FROM DrinkItems d
JOIN Categories c ON d.CategoryID = c.CategoryID
JOIN DrinkTypes dt ON c.TypeID = dt.TypeID
Where d.Description ILIKE '%Strawberry%'
ORDER BY dt.Temperature DESC;

--Drinks served with non-daily ( Oleato 메뉴가 조회가 안되므로 다시)
SELECT d.DrinkName, d.Price, dt.Temperature
FROM DrinkItems d
JOIN Categories c ON d.CategoryID = c.CategoryID
JOIN DrinkTypes dt ON c.TypeID = dt.TypeID
WHERE 
d.DrinkName ILIKE '%oat%'
OR d.DrinkName ILIKE '%coconut%'
OR d.DrinkName ILIKE '%almond%'
ORDER BY d.Price DESC;



-- Drinks include Strawberry
SELECT c.CategoryName, d.DrinkName, d.price, dt.Temperature
FROM DrinkItems d
JOIN Categories c ON d.CategoryID = c.CategoryID
JOIN DrinkTypes dt ON c.TypeID = dt.TypeID
WHERE d.DrinkName NOT ILIKE '%latte%'
AND d.DrinkName NOT ILIKE '%frappuccino%'
AND d.DrinkName NOT ILIKE '%milk%'
AND d.DrinkName NOT ILIKE '%almond%'
AND d.DrinkName NOT ILIKE '%oat%'
AND d.DrinkName NOT ILIKE '%coconut%'
AND d.DrinkName NOT ILIKE '%creame%'
AND d.DrinkName NOT ILIKE '%steamer%'
AND (d.Description NOT ILIKE '%milk%'AND d.Description NOT ILIKE '%coconut%' AND d.Description NOT ILIKE '%oat%')
AND c.CategoryName NOT IN ('Coffee Travellers')
ORDER BY c.CategoryID ASC, d.Price ASC;
