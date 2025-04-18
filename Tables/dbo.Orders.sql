CREATE TABLE [dbo].[Orders] (
  [OrderID] [int] NOT NULL,
  [CustomerID] [int] NULL,
  [ProductID] [int] NULL,
  [Quantity] [int] NULL,
  [OrderDate] [date] NULL,
  PRIMARY KEY CLUSTERED ([OrderID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[trg_CheckOrderQuantity]
ON [Orders]
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT * FROM inserted WHERE Quantity <= 0
    )
    BEGIN
        RAISERROR ('Quantity must be greater than 0.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

ALTER TABLE [dbo].[Orders]
  ADD FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
GO

ALTER TABLE [dbo].[Orders]
  ADD FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
GO