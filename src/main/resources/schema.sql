-- Create table for customers
CREATE TABLE customers
(
    id         BIGINT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name  VARCHAR(100) NOT NULL,
    email      VARCHAR(100) NOT NULL
);

-- Create table for accounts
CREATE TABLE accounts
(
    id           BIGINT PRIMARY KEY,
    customer_id  BIGINT NOT NULL,
    account_type VARCHAR(50),
    balance      DECIMAL(15, 2),
    FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE
);
