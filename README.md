# Starkbuks Drinks 
The Starbucks Beverage Insights Database is meticulously crafted to enhance the Starbucks experience by providing a detailed overview of beverage options. It includes DrinkItems, detailing every drink available; DrinkTypes, distinguishing between hot and cold beverages; and Categories, organizing drinks into specific groups. NutritionalInfo offers insights into the health aspects of each drink, including calories, sugar, and fat content. Toppings and DrinkItemToppings allow for a tailored beverage experience, enabling customization. The primary goal is to offer customers better drink recommendations and simplify access to beverage information, making it easier for everyone to find their perfect Starbucks drink. This database serves as an invaluable tool for those looking to explore the vast array of Starbucks offerings, ensuring informed choices and personalized experiences.

## Tables
1. **DrinkTypes Table**: Understanding the preference for either hot or cold beverages is fundamental in tailoring recommendations. The DrinkTypes table categorizes beverages based on their temperature, marking each with a distinctive type name and temperature attribute (Hot or Cold). This classification helps narrow down choices based on individual preferences.

2. **Categories Table**: Beyond temperature, drinks are further organized into categories to delineate specific groups such as lattes, frappuccinos, or refreshers. Each category is linked to a drink type, offering a structured way to browse through similar beverage styles or flavors.

3. **NutritionalInfo Table**: In today's health-conscious world, having quick access to nutritional information is crucial. This table aligns with each drink item to detail its caloric content, sugar, and fat levels, empowering customers to make choices that fit their dietary needs or preferences.

4. **Toppings Table**: Customization is at the heart of the Starbucks experience. The Toppings table lists available additions, enabling customers to modify and personalize their beverages. From whipped cream to almond milk, this table provides all the options for customization.

5. **DrinkItemToppings Table**: Acting as a bridge between DrinkItems and Toppings, this table maps which toppings are compatible with each drink, facilitating an easy customization process. It ensures that recommendations can include personalized touches, making each drink truly unique to the customer's taste.

## Insert Data Scripts
Populate the Starbucks Beverage Insights Database with comprehensive data using the following scripts:

- `insert_drinktypes.sql`: Defines beverage temperature categories (e.g., 'Hot', 'Cold').

- `insert_categories.sql`: Organizes drinks into categories based on type and preference.

- `insert_drinkitems.sql`: Adds detailed entries for individual drink options, including names and prices.

- `insert_nutritional_info.sql`: Provides health-related information such as calories, sugar, and fat content for each drink.

- `insert_topping.sql`: Introduces customizable topping options available for drinks.

- `insert_drinkItems_toppings.sql`: Links drinks to their corresponding toppings, enabling detailed customization possibilities.

## Comprehensive Beverage Insights: Pricing, Nutrition, and Customization Analysis
Explore the depth of Starbucks beverages with curated SQL scripts. From dissecting pricing strategies in `view_price.sql` to navigating nutritional content with `view_nutritionalinfo.sql`, the analyses span the spectrum of customer interests. Delve into popular trends with `view_toppings.sql` and uncover specific beverage recommendations tailored to dietary preferences and exclusions in `view_specificsituation.sql`. This collection serves as a gateway to understanding Starbucks' offerings in pricing, nutrition, and customization.

**view_price.sql** offers a comprehensive analysis of beverage pricing within the database. It allows for the identification of the highest and lowest-priced drinks, with additional functionality to exclude drinks from specific categories such as Coffee Travellers and Packaged Beverages, providing a clearer view of beverage pricing dynamics.

**view_nutritionalinfo.sql** delves into the nutritional aspects of the beverages, highlighting the drinks with the highest and lowest calories, sugar, and fat. It features a detailed nutritional breakdown for drinks within the Frappuccino category, analyzes beverages with an optimal calorie-to-sugar ratio, and identifies drinks that meet specific health-conscious criteria (low in calories, sugar, and fat). This script also calculates the average calorie content across different categories, aiding in informed nutritional choices.

**view_toppings.sql** aggregates data to reveal the top three most popular toppings used in beverages, providing a clear view of customer preferences for drink customization. This script is essential for understanding which toppings enhance the overall drink experience the most.

**view_specificsituation.sql** delivers targeted beverage recommendations by filtering for specific criteria such as decaf options and excluding certain categories like Coffee Travellers and Packaged Beverages. It further details drinks made with Blonde Espresso and showcases non-dairy drink options, emphasizing customer-centric solutions for varied dietary needs and preferences.

## ERD Diagram
<img src="https://github.com/ngnlyoosun/starbucksdrinksql/assets/91989383/1c6da634-0f70-4bc4-a176-df307ff3fe5b" width="800">

## Future Updates
Future updates will include additional tables, views, and queries to further enrich our Starbucks beverage insights. Stay tuned for more comprehensive analyses and recommendations.

## Reference
https://www.starbucks.ca/menu?gad_source=1&gclid=Cj0KCQjwhtWvBhD9ARIsAOP0GoiDP5Lw77QZBycnw6t3jl40ky6VH5dLR4G9jABQTKatYXsp5BugnwgaAudrEALw_wcB
