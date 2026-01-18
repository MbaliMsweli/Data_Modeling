USE [SandavTonerDB];

IF OBJECT_ID('Supplier', 'U') IS NULL
BEGIN
    CREATE TABLE [SandavTonerDB].dbo.Supplier (
        SupplierID INT IDENTITY(1,1) PRIMARY KEY,
        SupplierName VARCHAR(100) NOT NULL,
        Email VARCHAR(100),
        Phone VARCHAR(30),
        Province VARCHAR(50),
        City VARCHAR(50),
        Country VARCHAR(50),
        YearsInBusiness INT
    );
END
