﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Create inline table-valued function
CREATE FUNCTION [Sales].[GetOrdersByCustomer] (
    @CustomerID INT
)
RETURNS TABLE
AS
RETURN
    SELECT OrderID, OrderDate, Amount
    FROM Sales.Orders
    WHERE CustomerID = @CustomerID;
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Returns all orders placed by the specified customer', 'SCHEMA', N'Sales', 'FUNCTION', N'GetOrdersByCustomer'
GO