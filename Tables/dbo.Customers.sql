CREATE TABLE [dbo].[Customers] (
  [CustomerID] [int] NOT NULL,
  [FirstName] [nvarchar](50) NULL,
  [LastName] [nvarchar](50) NULL,
  PRIMARY KEY CLUSTERED ([CustomerID])
)
ON [PRIMARY]
GO