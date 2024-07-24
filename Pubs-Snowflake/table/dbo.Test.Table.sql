-- Databricks compatible script
CREATE TABLE Test(
    TestId INT NOT NULL GENERATED ALWAYS AS IDENTITY,
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
    Enrolled INT NOT NULL,
    PhoneNumber STRING,
    MobileNumber STRING,
    FaxNumber STRING,
    PRIMARY KEY (TestId),
    UNIQUE (Email)
);

-- Note: In Databricks, the text and image columns will be stored as STRING type
