-- SQLite
/** Add data to TABLES*/

INSERT INTO
    products (product_id, product_name, price, category)
VALUES
    ('P01', 'Samsung Galaxy S20', 3299, 'Smartphone'),
    ('P02', 'Asus Notebook', 4599, 'PC');

INSERT INTO
    customers (customer_id, customer_name, customer_tel)
VALUES
    ('C01', 'ALI', 0775693214),
('C02', 'ASMA', 0555298467);

INSERT INTO orders (customer_id, product_id, quantity, total_amount, order_date) VALUES ('C01', 'P02',2, 9198, ''), ('C02', 'P01', 1, 3299, '28/05/2020');

/** SELECT TABLES*/

SELECT product_id, product_name, category, price FROM products;
SELECT customer_id, customer_name, customer_tel FROM customers;
SELECT customer_id, product_id, order_date, quantity, total_amount  FROM orders;

UPDATE orders SET order_date = NULL WHERE order_date = '';

/** Joint TABLES 
 
 SELECT *
 FROM orders
 LEFT JOIN customers ON (orders.customer_id = customers.customer_id)
 LEFT JOIN products ON (orders.product_id = products.product_id)
 
 */