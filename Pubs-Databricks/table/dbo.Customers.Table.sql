-- Databricks compatible SQL Script
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerId INT NOT NULL,
    Email STRING NOT NULL,
    RowVersion BINARY,
    AccountCode STRING,
    FirstName STRING,
    LastName STRING,
    FirstAddress STRING,
    City STRING,
    Country STRING,
    ZipCode STRING,
    Website STRING,
    Active BOOLEAN NOT NULL,
    Enrolled INT NOT NULL,
    PhoneNumber STRING,
    MobileNumber STRING,
    FaxNumber STRING,
    PRIMARY KEY (CustomerId)
) USING DELTA;

-- Adding unique constraint for Email
ALTER TABLE Customers 
ADD CONSTRAINT unique_Email UNIQUE (Email);
