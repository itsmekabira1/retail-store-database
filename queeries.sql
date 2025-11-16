USE retail_store;

-- Show all products with their category and supplier names
SELECT 
    p.product_name, 
    c.category_name, 
    s.supplier_name, 
    p.price, 
    p.stock_quantity
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN suppliers s ON p.supplier_id = s.supplier_id;

-- Show customers who made purchases

SELECT DISTINCT c.customer_name, c.phone
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id;

-- Average product price by category

SELECT c.category_name, AVG(p.price) AS avg_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name;

-- Total items sold per product
SELECT 
    p.product_name, 
    SUM(si.quantity) AS total_sold
FROM sale_items si
JOIN products p ON si.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- List all products with low stock
SELECT product_name, stock_quantity
FROM products
WHERE stock_quantity < 20;
-- Show each sale with total amount and customer name
SELECT 
    s.sale_id,
    c.customer_name,
    s.sale_date,
    s.total_amount
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id;

-- Show total quantity sold and total earning per customer
SELECT 
    c.customer_name,
    SUM(si.quantity) AS total_items,
    SUM(si.price) AS total_spent
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
JOIN sale_items si ON s.sale_id = si.sale_id
GROUP BY c.customer_name;

--  Find which category has the highest total sales
SELECT 
    c.category_name,
    SUM(si.price * si.quantity) AS total_sales
FROM sale_items si
JOIN products p ON si.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY total_sales DESC
LIMIT 1;