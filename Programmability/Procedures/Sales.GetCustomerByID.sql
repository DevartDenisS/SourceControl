SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- Create procedure
CREATE PROCEDURE [Sales].[GetCustomerByID]
    @CustomerID INT
AS
BEGIN
    SELECT * FROM Sales.Customers WHERE CustomerID = @CustomerID;
END;
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Retrieves customer by ID', 'SCHEMA', N'Sales', 'PROCEDURE', N'GetCustomerByID'
GO