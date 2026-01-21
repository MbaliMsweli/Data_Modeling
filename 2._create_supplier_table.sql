USE [SandavTonerDB]

IF OBJECT_ID('Supplier', 'U') IS NULL
BEGIN
    CREATE TABLE Supplier (
        SupplierID INT IDENTITY(1,1) PRIMARY KEY,
        SupplierName VARCHAR(150),
        SupplierEmail VARCHAR(150),
        SupplierPhone VARCHAR(50),
        SupplierProvince VARCHAR(100),
        SupplierCity VARCHAR(100),
        SupplierCountry VARCHAR(100),
        SupplierYearsInBusiness INT
    );
END








