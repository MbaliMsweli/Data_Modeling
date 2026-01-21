
USE [SandavTonerDB]

IF OBJECT_ID('SupplierStock', 'U') IS NULL
BEGIN
    CREATE TABLE SupplierStock (
        SupplierStockID INT IDENTITY(1,1) PRIMARY KEY,
        SupplierID INT NOT NULL,
        ProductID INT NOT NULL,
        SupplierQuantityAvailable INT,
        SupplierLastDateUpdated DATETIME
    );
END