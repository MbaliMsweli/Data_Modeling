USE [SandavTonerDB]

IF OBJECT_ID('CompanyPayment', 'U') IS NULL
BEGIN
    CREATE TABLE CompanyPayment (
        CompanyPaymentID INT IDENTITY(1,1) PRIMARY KEY,
        CompanyOrderID INT NOT NULL,
        SupplierID INT NOT NULL,
        CompanyPaymentMethod VARCHAR(50),
        PaidAmount DECIMAL(12,2),
        PaymentDate DATE,
        PaymentStatus VARCHAR(50),
        Reference VARCHAR(150)
    );
END
