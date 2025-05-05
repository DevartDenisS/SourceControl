CREATE SCHEMA [Sales]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Sales schema for customers and orders', 'SCHEMA', N'Sales'
GO