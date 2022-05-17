# id
# order_date
# amount
# customer_id

DROP TABLE orders;

CREATE TABLE orders
(
    id          BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT 'order id',
    order_date  date                              NOT NULL COMMENT 'order created date',
    amount      DECIMAL(10, 2)                    NOT NULL COMMENT 'order amount',
    customer_id BIGINT COMMENT 'foreign key',
    FOREIGN KEY (customer_id)
        REFERENCES customers (id)
        ON DELETE CASCADE
);


# SELECT * FROM CUSTOMERS
SELECT *
FROM customers;
