USE customers_and_orders;

# IMPLICIT INNER JOIN
SELECT *
FROM customers,
     orders
WHERE customers.id = orders.customer_id;
