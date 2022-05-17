USE customers_and_orders;
SELECT id
FROM customers
WHERE last_name = 'George';
SELECT *
FROM orders
WHERE customer_id = 1;
