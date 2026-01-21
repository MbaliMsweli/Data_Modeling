USE [SandavTonerDB]

IF OBJECT_ID('CompanyOrder', 'U') IS NULL
BEGIN
    CREATE TABLE CompanyOrder (
        CompanyOrderID INT IDENTITY(1,1) PRIMARY KEY,
        CompanyID INT NOT NULL,
        SupplierID INT NOT NULL,
        OrderDate DATE,
        TotalAmount DECIMAL(12,2),
        OrderStatus VARCHAR(50)
    );
END