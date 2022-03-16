-- SQLite
/**  -CREATE TABLE-*/
/*'PRAGMA' specific commands to activate foreign keys */
/* 
 PRAGMA foreign_keys = ON;
 
 CREATE TABLE IF NOT EXISTS products (
 product_id VARCHAR(20) PRIMARY KEY,
 product_name VARCHAR(20) NOT NULL,
 price NUMBER POSITIVE VALUE
 );
 
 CREATE TABLE IF NOT EXISTS customers (
 customer_id VARCHAR(20) PRIMARY KEY,
 customer_name VARCHAR(20) NOT NULL,
 customer_tel NUMBER
 );
 
 CREATE TABLE IF NOT EXISTS orders (
 customer_id VARCHAR(20),
 product_id VARCHAR(20),
 quantity NUMBER,
 total_amount NUMBER,
 FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
 FOREIGN KEY (product_id) REFERENCES products(product_id)
 );
 */
/** ALTER TABLES */
/** ADD category column to products*/
ALTER TABLE
    products
ADD
    COLUMN category VARCHAR(20);

/** ADD order_date column to orders*/
ALTER TABLE
    orders
ADD
    COLUMN order_date DATE;