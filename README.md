# Bicycle-Sales-Analysis 🚲 💰

## Overview 📖
This project is an end-to-end solution for managing and analyzing bicycle sales data. The goal of this project was to create a comprehensive database that 
captures critical information related to bicycle sales, and then use complex SQL queries to extract meaningful business insights. Tableau was employed as the 
primary tool for visualizing these insights and communicating the findings effectively. The project provides a robust foundation for business decision-making 
and reporting, making it an essential tool for understanding key sales metrics and performance.

## Key Components

1. **Database Creation 💻:**
The first step was to design and implement a relational database that stores various data entities such as orders, stores, customer details, products, categories, stocks, and brands. 
The database schema was carefully structured to ensure relationships between tables were optimized for performance and data integrity.

2. **Data Import 〰️:**
Sales data was sourced from Kaggle and imported into the database using ETL processes (Extract, Transform, Load). The raw data, which was initially available in CSV and Excel formats,
was cleaned and transformed to fit the database schema before being imported into respective tables.

3. **SQL Queries for Insights 👀:**
To extract valuable business insights, complex SQL queries were written to aggregate data, analyze trends, and identify key patterns. These queries included:

    - **Top 10 Customers by Order Value**
      
    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/019e3b56909ffdd590f6ad60e39ddda77e755416/SQLOutputs/Top%20Customers%20Output.png)
  
    - **Most Frequent Buying Customers**

    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/e39c9a468379906dd632904abb41a9cc0187d4d7/SQLOutputs/Customer%20Buying%20Frequency%20Output.png)

    - **Average Order Value by Order of United States**

    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/e39c9a468379906dd632904abb41a9cc0187d4d7/SQLOutputs/Average%20Order%20Value%20by%20State%20Output.png)
    
    - **Most Popular Products**

    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/e39c9a468379906dd632904abb41a9cc0187d4d7/SQLOutputs/Popular%20Products%20Output.png)
    
    - **Products That Run Out of Stock**

    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/e39c9a468379906dd632904abb41a9cc0187d4d7/SQLOutputs/Out%20of%20Stock%20Products%20Output.png)
    
    - **Most Profitable Store**
   
    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/e39c9a468379906dd632904abb41a9cc0187d4d7/SQLOutputs/Store%20Profits%20Output.png)

    - **Order Status Percentages**
      
    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/e39c9a468379906dd632904abb41a9cc0187d4d7/SQLOutputs/Order%20Status%20Percentage%20Output.png)
    
    - **Product Demand Pattern in Year 2018**
   
    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/e39c9a468379906dd632904abb41a9cc0187d4d7/SQLOutputs/Product%20Demand%202018%20Output.png)

    - **Top 3 Most Profitable Brands**
      
    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/e39c9a468379906dd632904abb41a9cc0187d4d7/SQLOutputs/Top%20Brands%20Output.png)
    
    - **Top Performing Product Categories**
      
    ![image alt](https://github.com/NikhilInampudi/Bicycle-Sales-Analysis/blob/e39c9a468379906dd632904abb41a9cc0187d4d7/SQLOutputs/Top%20Product%20Categories%20Output.png)


5. **Tableau for Data Visualization 📊:**
Tableau was used to create interactive, visually appealing dashboards that displayed crucial metrics of the database in an easily digestible format. Data transformation was also performed in Tableau to
create calculated columns and make fields more usable for data analysis. All of the following data can be dynamically changed by utilizing the year filter in the dashboard. The following visualizations were created:

    - **Time Series Line Chart: Total Sales by Year**
  
    - **Transpose Bar Chart: Most Profitable Customers**
  
    - **Bar Chart: Top Performing Product Categories**
  
    - **Transpose Bar Chart: Most Popular Products**
  
    - **Geo Chart: Total Sales by State**
  
6. Business Insights and Recommendations 💸:
Based on the SQL queries and Tableau visualizations, actionable business insights were derived. These included:

    - **Sales Optimization: Identifying best-selling bicycle models and regions where marketing efforts should be concentrated.**
  
    - **Customer Retention Strategies: Understanding which customer segments are most loyal and recommending targeted retention efforts.**
  
    - **Profit Maximization: Highlighting product categories with the highest profit margins and suggesting areas to optimize pricing strategies.**
  
    - **Inventory Replenishment: Ensuring that popular products were sufficiently stocked based on sales patterns.**

## Technical Details 🤖

- **Database:**
  
    -*DBMS:* SQL Server / Azure Data Studio 

    -*Schema Design:* Normalized relational schema with tables such as Brands, Categories, Customers, Orders, Products, Stores, etc.

    -*Relationships:* Primary and foreign key relationships to ensure referential integrity.

    -*SQL:* Used for complex queries, aggregations, and data extraction.

- **Data Import Process:**

    -CSV/Excel data was cleaned using SQL scripts to ensure consistency.

    -Data was validated and imported into the corresponding database tables.

- **Data Visualization:**

    -Tableau: Live connection by integrating to SQL Server database and used for designing dashboards.

    -Key Visuals: Line charts, bar charts, and geographical heat maps.

    -Interactivity: Filters / drill-down options for deeper exploration of data.

## Conclusion 🔚

This project highlights the end-to-end process of building a bicycle sales analytics platform, from database creation and data importation to advanced querying and visualization. 
It emphasizes the importance of how complex SQL queries can provide actionable insights to drive business strategies. By using Tableau for data visualization, the project makes the 
insights accessible to non-technical stakeholders, enabling them to make informed decisions. This end-to-end solution is an example of how data engineering, analytics, and visualization 
can be effectively combined to solve business challenges.
  
   
  

