USE customers_and_orders;

# EXPLICIT INNER JOINS
SELECT *
FROM customers
         JOIN orders
              ON customers.id = orders.customer_id;

SELECT *
FROM orders;


# EXPLICIT INNER JOIN
SELECT first_name, last_name, order_date, amount
FROM customers
         JOIN orders
              ON customers.id = orders.customer_id
ORDER BY order_date;
SELECT first_name,
       last_name,
       SUM(amount) AS total_spent
FROM customers
         JOIN orders
              ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;
