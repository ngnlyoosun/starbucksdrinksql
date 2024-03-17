--Drink Types
CREATE TABLE DrinkTypes (
    TypeID SERIAL PRIMARY KEY,
    TypeName VARCHAR(255) NOT NULL,
    Temperature VARCHAR(50) NOT NULL 
);

-- Drink's Categories
CREATE TABLE Categories (
    CategoryID SERIAL PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL,
    TypeID INT,
    CONSTRAINT fk_categories_drinktypes
        FOREIGN KEY (TypeID)
        REFERENCES DrinkTypes(TypeID)
        ON DELETE SET NULL
);

-- Drinks in each categories
CREATE TABLE DrinkItems (
DrinkItemID VARCHAR(10) PRIMARY KEY,
CategoryID INT NOT NULL,
DrinkName VARCHAR(255) NOT NULL,
Price NUMERIC(5, 2),
Description TEXT,
CONSTRAINT fk_category
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID)
ON DELETE SET NULL
);

-- Each drinks nutriotional Information
CREATE TABLE NutritionalInfo (
    DrinkItemID VARCHAR(10) PRIMARY KEY,
    Calories INT,
    Sugar INT,
    Fat INT,
    CONSTRAINT fk_nutritionalinfo_drinkitem
        FOREIGN KEY (DrinkItemID)
        REFERENCES DrinkItems(DrinkItemID)
        ON DELETE CASCADE
);

-- Toppings
CREATE TABLE Toppings (
    ToppingID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- 
CREATE TABLE DrinkItemToppings (
    DrinkItemID VARCHAR(10) NOT NULL,
    ToppingID INT NOT NULL,
    PRIMARY KEY (DrinkItemID, ToppingID),
    CONSTRAINT fk_drinkitemtopping_drinkitem
        FOREIGN KEY (DrinkItemID)
        REFERENCES DrinkItems(DrinkItemID)
        ON DELETE CASCADE,
    CONSTRAINT fk_drinkitemtopping_topping
        FOREIGN KEY (ToppingID)
        REFERENCES Toppings(ToppingID)
        ON DELETE RESTRICT
);