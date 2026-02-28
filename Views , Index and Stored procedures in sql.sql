USE prime;
SELECT * FROM customers;
SELECT * FROM orders;

-- VIEWS in SQL
CREATE VIEW view1 AS
SELECT customer_id,name FROM customers;

SELECT * FROM view1;


CREATE VIEW view2 AS 
SELECT c.customer_id, c.name,o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id; 

SELECT * FROM view2; 

DROP VIEW view2;

-- INDEX in sql

CREATE TABLE accounts1 (
account_id INT PRIMARY KEY,
name VARCHAR(50),
balance DECIMAL(10, 2),
branch VARCHAR(50)
);

INSERT INTO accounts1 VALUES
(1,'Adam', 500.00,'Mumbai'),
(2,'Bob',300.00,'Delhi'),
(3,'Charlie', 700.00,'Bangalore'),
(4,'David', 1000.00, 'Noida');

SELECT * FROM accounts1;

CREATE INDEX id_branch ON accounts1 (branch);

SHOW INDEX FROM accounts1;

SELECT *
FROM accounts1
WHERE branch ="Mumbai";

-- multiple-col
CREATE INDEX idx2 ON accounts1 (branch,balance); 
SHOW INDEX FROM accounts1;

DROP INDEX idx2 ON accounts1;

-- Stored Procedures

DELIMITER $$

CREATE PROCEDURE check_balance(IN acc_id INT , OUT bal DECIMAL(10,2))
BEGIN
     SELECT balance INTO bal
     FROM accounts1
     WHERE account_id = acc_id;

END $$

DELIMITER ;
 
CALL check_balance(1,@balance);
SELECT @balance;

DROP PROCEDURE IF EXISTS check_balance;