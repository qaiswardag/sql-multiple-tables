USE customers_and_orders;
ALTER TABLE orders
    MODIFY customer_id
        INT
        COMMENT 'order foreign key'
;

SELECT *
FROM orders;
