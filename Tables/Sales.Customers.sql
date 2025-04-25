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

CREATE INDEX [IX_Customers_Email]
  ON [Sales].[Customers] ([Email])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Create trigger
CREATE TRIGGER [Sales].[trg_Customers_Insert]
ON [Sales].[Customers]
AFTER INSERT
AS
BEGIN
    PRINT 'New customer inserted';
END;
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Prints message after customer insert', 'SCHEMA', N'Sales', 'TABLE', N'Customers', 'TRIGGER', N'trg_Customers_Insert'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Customer information', 'SCHEMA', N'Sales', 'TABLE', N'Customers'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Index for quick search by Email', 'SCHEMA', N'Sales', 'TABLE', N'Customers', 'INDEX', N'IX_Customers_Email'
GO