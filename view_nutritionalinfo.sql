--Analyzing Drink Nutritional Data: Discovering the Highest and Lowest Calorie, Sugar, and Fat Content

--Top 5 Highest Calories Drinks
SELECT d.DrinkName, n.Calories
FROM NutritionalInfo n
JOIN DrinkItems d ON n.DrinkItemID = d.DrinkItemID
WHERE n.Calories IS NOT NULL
ORDER BY n.Calories DESC
LIMIT 5;

--Top 5 Lowest Calories Drinks
SELECT d.DrinkName, n.Calories
FROM NutritionalInfo n
JOIN DrinkItems d ON n.DrinkItemID = d.DrinkItemID
WHERE n.Calories IS NOT NULL
ORDER BY n.Calories ASC
LIMIT 5;

--Top 5 Highest Sugar Drinks
SELECT d.DrinkName, n.Sugar
FROM NutritionalInfo n
JOIN DrinkItems d ON n.DrinkItemID = d.DrinkItemID
WHERE n.Sugar IS NOT NULL
ORDER BY n.Sugar DESC
LIMIT 5;

--Top 5 Lowest Sugar Drinks
SELECT d.DrinkName, n.Sugar
FROM NutritionalInfo n
JOIN DrinkItems d ON n.DrinkItemID = d.DrinkItemID
WHERE n.Sugar IS NOT NULL
ORDER BY n.Sugar ASC
LIMIT 5;

--Top 5 Highest Fat Drinks
SELECT d.DrinkName, n.Fat
FROM NutritionalInfo n
JOIN DrinkItems d ON n.DrinkItemID = d.DrinkItemID
WHERE n.Fat IS NOT NULL
ORDER BY n.Fat DESC
LIMIT 5;

--Top 5 Lowest Fat Drinks
SELECT d.DrinkName, n.Fat
FROM NutritionalInfo n
JOIN DrinkItems d ON n.DrinkItemID = d.DrinkItemID
WHERE n.Fat IS NOT NULL
ORDER BY n.Fat ASC
LIMIT 5;

--Frappucino Category Beverage Full Nutrition Information Inquiry
SELECT d.DrinkName, n.Calories, n.Sugar, n.Fat
FROM DrinkItems d
JOIN NutritionalInfo n ON d.DrinkItemID = n.DrinkItemID
JOIN Categories c ON d.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Frappuccino'
ORDER BY n.Calories DESC;


--The ratio of calories to sugar
SELECT d.DrinkName, n.Calories, n.Sugar,
       (n.Calories / NULLIF(n.Sugar, 0)) AS CaloriePerSugarRatio
FROM NutritionalInfo n
JOIN DrinkItems d ON n.DrinkItemID = d.DrinkItemID
WHERE n.Sugar IS NOT NULL AND n.Calories IS NOT NULL
ORDER BY CaloriePerSugarRatio DESC;

--Drinks with the lowest calories and less than 5 sugar and less than 10 fat
SELECT d.DrinkName, n.Calories, n.Sugar,n.Fat
FROM NutritionalInfo n
JOIN DrinkItems d ON n.DrinkItemID = d.DrinkItemID
WHERE n.Calories IS NOT NULL AND n.Sugar <= 5 AND n.Fat <=3
ORDER BY n.Calories ASC;

SELECT c.CategoryName, ROUND(AVG(n.Calories)::numeric, 3) AS AvgCalories
FROM Categories c
JOIN DrinkItems d ON c.CategoryID = d.CategoryID
JOIN NutritionalInfo n ON d.DrinkItemID = n.DrinkItemID
GROUP BY c.CategoryName
ORDER BY AvgCalories DESC;


