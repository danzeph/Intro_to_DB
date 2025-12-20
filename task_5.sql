-- Select the database
USE alx_book_store;

-- Insert a single record using standard syntax
INSERT INTO customers (customer_id, customer_name, email, address) 
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave');

-- Verify the insertion
SELECT * FROM customers;
