CREATE TABLE [dbo].[Products] (
  [ProductID] [int] NOT NULL,
  [ProductName] [nvarchar](100) NULL,
  [Price] [decimal](10, 2) NULL,
  PRIMARY KEY CLUSTERED ([ProductID])
)
ON [PRIMARY]
GO