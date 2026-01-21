USE [SandavTonerDB]

IF OBJECT_ID('Company', 'U') IS NULL
BEGIN
    CREATE TABLE Company (
        CompanyID INT IDENTITY(1,1) PRIMARY KEY,
        CompanyName VARCHAR(150),
        CompanyEmail VARCHAR(150),
        CompanyPhone VARCHAR(50),
        CompanyProvince VARCHAR(100),
        CompanyCity VARCHAR(100),
        CompanyCountry VARCHAR(100),
        CompanyYearsInBusiness INT
    );
END