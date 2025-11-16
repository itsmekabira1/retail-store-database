USE retail_store;

INSERT INTO categories (category_name)
VALUES 
('Grains & Rice'),
('Beverages'),
('Snacks'),
('Dairy Products'),
('Household Essentials');

INSERT INTO suppliers (supplier_name, contact_number, email, address)
VALUES
('Al-Faisal Distributors', '03001234567', 'info@alfaisal.pk', 'Karachi, Pakistan'),
('Metro Suppliers', '03115678900', 'sales@metro.pk', 'Lahore, Pakistan'),
('SuperMart Wholesalers', '03227894561', 'orders@supermart.pk', 'Islamabad, Pakistan');

INSERT INTO products (product_name, category_id, supplier_id, price, stock_quantity)
VALUES
('Basmati Rice 5kg', 1, 1, 1500.00, 20),
('Brown Rice 2kg', 1, 1, 900.00, 10),
('Pepsi 1.5L', 2, 2, 220.00, 15),
('Nestle Milk Pack 1L', 4, 2, 310.00, 25),
('Surf Excel 1kg', 5, 3, 450.00, 18),
('Lays Chips 50g', 3, 2, 80.00, 30);

INSERT INTO customers (customer_name, phone, email)
VALUES
('Ayesha ali', '03001112223', 'ayesha.khan@gmail.com'),
('Bilal Ahmed', '03112223344', 'bilal.ahmed@yahoo.com'),
('Fatima Noor', '03334445566', 'fatima.noor@hotmail.com');

INSERT INTO sales (customer_id, total_amount)
VALUES
(1, 1730.00),
(2, 900.00),
(3, 610.00);

INSERT INTO sale_items (sale_id, product_id, quantity, price)
VALUES
(1, 1, 1, 1500.00),
(1, 3, 1, 220.00),
(2, 2, 1, 900.00),
(3, 4, 2, 310.00);

INSERT INTO inventory (product_id, quantity_in, quantity_out)
VALUES
(1, 30, 10),
(2, 20, 5),
(3, 40, 25),
(4, 50, 10),
(5, 25, 7),
(6, 60, 30);

SHOW TABLES;
SELECT * FROM categories;
SELECT * FROM suppliers;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM sales;
SELECT * FROM sale_items;
SELECT * FROM inventory;