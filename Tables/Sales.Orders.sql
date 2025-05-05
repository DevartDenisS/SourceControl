CREATE TABLE [Sales].[Orders] (
  [OrderID] [int] NOT NULL,
  [CustomerID] [int] NOT NULL,
  [OrderDate] [date] NOT NULL,
  [Amount] [money] NOT NULL,
  PRIMARY KEY CLUSTERED ([OrderID])
)
ON [PRIMARY]
GO

ALTER TABLE [Sales].[Orders]
  ADD CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [Sales].[Customers] ([CustomerID])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Orders placed by customers', 'SCHEMA', N'Sales', 'TABLE', N'Orders'
GO