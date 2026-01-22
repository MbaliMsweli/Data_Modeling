USE [SandavTonerDB]

SELECT * FROM [dbo].[CompanyOrder];

SELECT * FROM [dbo].[CompanyOrderItem]

----checking order status for the orders that the company placed from the supplier and the total paid for the quantity that was ordered
SELECT 
co.CompanyOrderID,
co.OrderStatus,
co.OrderDate,
SUM(coi.Quantity*coi.Price) as TotalPaid
FROM [CompanyOrder] AS co
INNER JOIN [CompanyOrderItem] AS coi
ON co.CompanyOrderID = coi.CompanyOrderID
GROUP BY 
co.CompanyOrderID,
co.OrderStatus,
co.OrderDate;


SELECT* FROM [dbo].[Customer]
SELECT* FROM [dbo].[CustomerOrder]


----To see customer names, city, order date with Pending order status 
SELECT
co.CustomerOrderStatus,
co.CustomerOrderDate,
co.CustomerTotalAmount,
c.CustomerName,
c.CustomerCity,
c.CustomerType
FROM CustomerOrder as co
INNER JOIN Customer as c
ON co.CustomerID = c.CustomerID
WHERE co.CustomerOrderStatus = 'Pending';