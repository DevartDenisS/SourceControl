CREATE TABLE [Sales].[Customers] (
  [CustomerID] [int] NOT NULL,
  [Name] [nvarchar](100) NOT NULL,
  [Email] [nvarchar](100) NOT NULL,
  [Phone] [nvarchar](20) NULL,
  PRIMARY KEY CLUSTERED ([CustomerID]),
  CONSTRAINT [CHK_Email] CHECK ([Email] like '%@%')
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Customer information', 'SCHEMA', N'Sales', 'TABLE', N'Customers'
GO