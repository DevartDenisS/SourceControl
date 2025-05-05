CREATE SERVICE [SB_Service]
ON QUEUE [dbo].[SB_Queue] (
  [SB_Contract]
)
GO