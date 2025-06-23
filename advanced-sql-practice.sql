-- WHERE & GROUP BY clauses
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
WHERE total_amount >= 200
GROUP BY customer_id;

-- GROUP BY & HAVING clauses
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 200;

-- INNER JOIN clause
SELECT orders.id, customers.first_name, customers.last_name, orders.order_date, orders.total_amount
FROM orders
INNER JOIN customers ON orders.customer_id = customers.id;

-- TABLE Sub-queries
SELECT order_date
FROM (SELECT id, order_date, total_amount FROM orders) AS order_summary;

-- LEFT JOIN clause
SELECT orders.id, customers.first_name, customers.last_name, orders.order_date, orders.total_amount
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.id;

-- SCALAR clause
SELECT AVG(total_amount) AS total_average
FROM orders;

-- COLUMN sub-query
SELECT id, first_name, last_name
FROM customers
WHERE id IN (SELECT customer_id FROM orders WHERE total_amount >= 200);