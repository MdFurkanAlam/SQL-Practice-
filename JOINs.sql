USE prime;

CREATE TABLE customers(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customers
(customer_id,name,city)
VALUES
(1,'Alice','Mombai'),
(2,'Bob','Delhi'),
(3,'Charlie','Bangalore'),
(4,'David','Mombai');

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
amount INT);

INSERT INTO orders
(order_id,customer_id,amount)
VALUES
(101,1,500),
(102,1,900),
(103,2,300),
(104,5,700);


SELECT * FROM customers;
SELECT * FROM orders;

-- inner join
SELECT *
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id; 

SELECT c.customer_id,o.order_id,c.name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id; 

-- Left outer join 

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id; 

-- Right outer join

SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;  

-- Outer join
SELECT *
FROM customers as c
LEFT JOIN orders as o
ON c.customer_id = o.customer_id
UNION 
SELECT *
FROM customers as  c
RIGHT JOIN orders as o
ON c.customer_id = o.customer_id;  

-- Cross join

SELECT * FROM customers
CROSS JOIN orders;

-- Self join
SELECT * 
FROM customers as A
JOIN customers as B
ON A.customer_id = B.customer_id; 

-- Left exclusive join
SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL; 

-- Right exclusive join
SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;  