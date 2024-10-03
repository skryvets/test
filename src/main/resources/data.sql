INSERT INTO customers (id, first_name, last_name, email)
VALUES (1, 'Alice', 'Smith', 'alice.smith@example.com'),
       (2, 'Bob', 'Johnson', 'bob.johnson@example.com'),
       (3, 'Charlie', 'Brown', 'charlie.brown@example.com'),
       (4, 'Diana', 'Prince', 'diana.prince@example.com'),
       (5, 'John', 'Doe', 'john.doe@example.com');

INSERT INTO accounts (id, customer_id, account_type, balance)
VALUES (1, 1, 'Checking', 700000.00),  -- Alice has 700,000 in Checking
       (2, 1, 'Savings', 400000.00),   -- Alice also has 400,000 in Savings (Aggregate: 1.1M)
       (3, 2, 'Checking', 3000000.00), -- Bob has 3,000,000 in Checking (Already high-profile)
       (4, 3, 'Checking', 50000.00),   -- Charlie has 50,000 in Checking
       (5, 4, 'Savings', 800000.00),   -- Diana has 800,000 in Savings
       (6, 4, 'Checking', 300000.00),  -- Diana also has 300,000 in Checking (Aggregate: 1.1M)
       (7, 5, 'Checking', 50000000.00),-- John has 50,000,000 in Checking
       (8, 5, 'Savings', 500000.00);   -- John also has 500,000 in Savings (Aggregate: 50.5M)
