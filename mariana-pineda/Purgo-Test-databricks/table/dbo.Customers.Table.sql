-- Databricks SQL script for creating the Customers table

CREATE TABLE Customers (
    CustomerId INT NOT NULL,
    Email STRING NOT NULL,
    RowVersion BINARY NOT NULL,
    AccountCode STRING,
    FirstName STRING,
    LastName STRING,
    FirstAddress STRING,
    City STRING,
    Country STRING,
    ZipCode STRING,
    Website STRING,
    Active BOOLEAN NOT NULL,
    Enrrolled INT NOT NULL,
    PhoneNumber STRING,
    MobileNumber STRING,
    FaxNumber STRING,
    PRIMARY KEY (CustomerId),
    UNIQUE (Email)
);

-- Set CustomerId to auto increment from 1
ALTER TABLE Customers ALTER COLUMN CustomerId SET GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1);
