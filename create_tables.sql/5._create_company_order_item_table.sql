
USE [SandavTonerDB]

IF OBJECT_ID('CompanyOrderItem', 'U') IS NULL
BEGIN
    CREATE TABLE CompanyOrderItem (
        CompanyOrderItemID INT IDENTITY(1,1),
        CompanyOrderID INT NOT NULL,
        ProductID INT NOT NULL,
        Quantity INT,
        Price DECIMAL(12,2)
    );
END