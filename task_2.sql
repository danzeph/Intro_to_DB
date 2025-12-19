-- USE DATABASE
USE alx_book_store;

-- DROP TABLES IF THEY EXIST (ORDER MATTERS DUE TO FOREIGN KEYS)
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS authors;

-- AUTHORS TABLE
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

-- BOOKS TABLE
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215) UNIQUE,
    address TEXT
);

-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDER DETAILS TABLE
CREATE TABLE order_details (
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
