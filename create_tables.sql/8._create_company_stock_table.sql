
USE [SandavTonerDB]

IF OBJECT_ID('CompanyStock', 'U') IS NULL
BEGIN
    CREATE TABLE CompanyStock (
        CompanyStockID INT IDENTITY(1,1) PRIMARY KEY,
        SupplierID INT NOT NULL,
        ProductID INT NOT NULL,
        CompanyQuantityAvailable INT,
        CompanyLastDateUpdated DATETIME
    );
END
