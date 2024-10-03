# High-Profile Banking Customers Application

Recently, high-profile customers have been targeted by phishing attacks, which has raised security concerns. To mitigate
this, we need to return only high-profile customers. A high-profile customer is defined as a customer whose aggregate
balance across all their accounts is more than $1 million.

You are required to modify the existing endpoint to return only high-profile customers.

## Requirements

- Java 17

## Features

* **High-Profile Customer Detection**: The application identifies customers whose **aggregate balance** across all
  accounts exceeds $1 million.

## Tasks

1. **Fix the Bug**: When you run the application and call `/customers` endpoint there would be an error. Investigate the
   issue and fix the bug.
2. **High-Profile Customer Logic**: The `/customers` endpoint currently returns all customers. Modify the logic so that it
   returns accounts for customers whose **combined account balance** is greater than $1 million.
3. **Tests**: After fixing the logic, write a test to ensure the functionality works as expected.
