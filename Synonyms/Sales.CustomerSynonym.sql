CREATE SYNONYM [Sales].[CustomerSynonym] FOR [Sales].[Customers]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Synonym for Sales.Customers table', 'SCHEMA', N'Sales', 'SYNONYM', N'CustomerSynonym'
GO