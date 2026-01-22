USE [SandavTonerDB]

IF OBJECT_ID('SupplierPrice', 'U') IS NULL
BEGIN
    CREATE TABLE SupplierPrice (
        SupplierPriceID INT IDENTITY(1,1) PRIMARY KEY,
        SupplierID INT NOT NULL,
        ProductID INT NOT NULL,
        SupplierProductPrice DECIMAL(12,2),
        SupplierMOQ INT,
        SupplierBulkDiscount DECIMAL(5,2)
    );
END