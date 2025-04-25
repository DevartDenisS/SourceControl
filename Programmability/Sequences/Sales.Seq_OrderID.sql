CREATE SEQUENCE [Sales].[Seq_OrderID]
  AS bigint
  INCREMENT BY 1
  NO CYCLE
  CACHE 
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Sequence for order IDs', 'SCHEMA', N'Sales', 'SEQUENCE', N'Seq_OrderID'
GO