USE [SandavTonerDB]

IF OBJECT_ID('CompanyPrice', 'U') IS NULL
BEGIN
    CREATE TABLE CompanyPrice (
        CompanyPriceID INT IDENTITY(1,1) PRIMARY KEY,
        SupplierID INT NOT NULL,
        ProductID INT NOT NULL,
        CompanyProductPrice DECIMAL(12,2),
        CompanyMOQ INT,
        CompanyBulkDiscount DECIMAL(5,2)
    );
END