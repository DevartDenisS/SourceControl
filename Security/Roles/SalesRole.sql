CREATE ROLE [SalesRole]
GO

EXEC sp_addrolemember N'SalesRole', N'SalesUser'
GO