CREATE TABLE [Sales].[Customers] (
  [CustomerID] [int] NOT NULL,
  [Name] [nvarchar](100) NOT NULL,
  [Email] [nvarchar](100) NOT NULL,
  [Phone] [nvarchar](20) NULL,
  PRIMARY KEY CLUSTERED ([CustomerID])
)
ON [PRIMARY]
GO