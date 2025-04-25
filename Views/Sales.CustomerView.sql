SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Create view
CREATE VIEW [Sales].[CustomerView] AS
SELECT CustomerID, Name, Email FROM Sales.Customers;
GO