CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2),
    order_date DATE
);

-- Insert the records into the orders table
INSERT INTO orders (order_id, customer_id, product, quantity, price, order_date) VALUES
(1, 101, 'Laptop', 2, 1000.00, '2024-08-01'),
(2, 102, 'Smartphone', 1, 800.00, '2024-08-02'),
(3, 101, 'Laptop', 1, 1000.00, '2024-08-03'),
(4, 103, 'Tablet', 4, 600.00, '2024-08-04'),
(5, 104, 'Smartphone', 3, 800.00, '2024-08-05'),
(6, 102, 'Tablet', 2, 600.00, '2024-08-06'),
(7, 101, 'Laptop', 1, 1000.00, '2024-08-07'),
(8, 103, 'Smartphone', 5, 800.00, '2024-08-08'),
(9, 105, 'Laptop', 3, 1000.00, '2024-08-09');

-- use of group by 
SELECT 
    product,
    COUNT(*) AS total_orders,           
    SUM(quantity) AS total_quantity,    
    AVG(price) AS average_price, 
    MAX(price) AS max_price,            
    MIN(price) AS min_price             
FROM 
    orders
GROUP BY 
    product;

-- use of having
SELECT product, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product
HAVING SUM(quantity) > 6;
 
-- use of limit
SELECT product, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product
HAVING SUM(quantity) > 6
ORDER BY total_quantity DESC
LIMIT 1;


 

