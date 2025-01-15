--Business Insights:
-- Who are the top 10 customers by order value?

WITH CustomersOrdersItems AS(
    SELECT c.customer_id, first_name, 
    last_name, ((quantity * list_price) * (1 - discount)) as OrderValue  
    FROM customers c JOIN orders o ON c.customer_id=o.customer_id
    JOIN order_items i ON o.order_id=i.order_id
)
SELECT TOP 10 customer_id, CONCAT(first_name, ' ', last_name) as CustomerName, 
SUM(OrderValue) as OrderValue
FROM CustomersOrdersItems
GROUP BY customer_id, CONCAT(first_name, ' ', last_name)
ORDER BY OrderValue DESC;  

-- Which customers are the most frequent buyers?

SELECT TOP 10 c.customer_id, CONCAT(first_name, ' ', last_name) as CustomerName,
COUNT(item_id) as BuyingFrequency
FROM customers c JOIN orders o ON c.customer_id=o.customer_id
JOIN order_items i ON o.order_id=i.order_id
GROUP BY c.customer_id, CONCAT(first_name, ' ', last_name)
ORDER BY BuyingFrequency DESC;

--Average order value by area of United States

SELECT 
    CASE 
        WHEN state = 'NY' THEN 'East Coast'
        WHEN state = 'TX' THEN 'Central'
        WHEN state = 'CA' THEN 'West Coast'
        ELSE 'Unknown'
    END AS USLocations,
    AVG(quantity * list_price) as AverageOrderValue 
FROM customers c JOIN orders o ON c.customer_id=o.customer_id
JOIN order_items i ON o.order_id=i.order_id
GROUP BY CASE 
        WHEN state = 'NY' THEN 'East Coast'
        WHEN state = 'TX' THEN 'Central'
        WHEN state = 'CA' THEN 'West Coast'
        ELSE 'Unknown'
    END;

-- What are the most popular products?

    SELECT TOP 16 product_name, COUNT(order_id) as BuyingFrequency,
    DENSE_RANK() OVER (ORDER BY COUNT(order_id) DESC) AS Ranking
    FROM order_items i JOIN products p ON i.product_id=p.product_id
    GROUP BY product_name
    ORDER BY BuyingFrequency DESC;
    
-- What products run out of stock frequently?

SELECT product_name as Product, quantity as Supply 
FROM products p JOIN stocks s ON p.product_id=s.product_id
WHERE quantity = 0

-- Which store is the most profitable?

WITH StoreSales AS (
SELECT store_name, (quantity*list_price) as SaleAmount
FROM stores s JOIN orders o ON s.store_id=o.store_id
JOIN order_items i ON i.order_id= o.order_id
)
SELECT store_name as Stores, SUM(SaleAmount) as TotalSales
FROM StoreSales
GROUP BY store_name
ORDER BY SUM(SaleAmount) DESC;

-- Order status percentages

WITH OrderStatus AS
(SELECT
    CASE 
        WHEN order_status = '1' THEN 'Pending'
        WHEN order_status = '2' THEN 'Processing'
        WHEN order_status = '3' THEN 'Rejected'
        WHEN order_status = '4' THEN 'Completed'
        ELSE 'Unknown'
    END AS OrderStatuses
FROM orders)
SELECT OrderStatuses, COUNT(OrderStatuses) as Occurrences,
ROUND(COUNT(OrderStatuses) * 100.0 / (SELECT COUNT(*) FROM orders), 2) AS Percentage
FROM OrderStatus
GROUP BY OrderStatuses
ORDER BY Percentage DESC; 

-- What is the product demand pattern by month in year 2018?

SELECT MONTH(order_date) as Months, 
COUNT(order_id) as OrderFrequency
FROM orders
WHERE YEAR(order_date) = '2018'
GROUP BY MONTH(order_date)

-- What are the top 3 most profitable brands?

WITH BrandOrders AS
(
SELECT brand_name, (i.list_price * quantity) as OrderAmount
FROM brands b JOIN products p ON b.brand_id=p.brand_id
JOIN order_items i ON p.product_id=i.product_id
)
SELECT TOP 3 brand_name as Brands, SUM(OrderAmount) as TotalSales
FROM BrandOrders
GROUP BY brand_name
ORDER BY TotalSales DESC;

-- What are the top performing product categories?

WITH CategorySales AS
(
SELECT category_name, (quantity * i.list_price) * (1 - discount) as OrderValue 
FROM categories c JOIN products p ON c.category_id=p.category_id
JOIN order_items i ON p.product_id=i.product_id
)
SELECT category_name as Categories, SUM(OrderValue) as TotalSales
FROM CategorySales
GROUP BY category_name
ORDER BY TotalSales DESC;







--








        




                










