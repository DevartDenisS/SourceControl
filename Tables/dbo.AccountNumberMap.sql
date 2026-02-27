CREATE TABLE [dbo].[AccountNumberMap] (
  [id] [int] IDENTITY,
  [account_number] [varchar](30) MASKED WITH (FUNCTION = 'default()') NOT NULL,
  [account_id] [int] NOT NULL,
  [accountnumbertype_id] [int] NULL,
  [update_time] [datetime] NOT NULL DEFAULT (suser_sname()),
  [update_by] [varchar](35) NULL DEFAULT (suser_sname()),
  CONSTRAINT [PK__AccountN__3213E83F45B4EFFA] PRIMARY KEY CLUSTERED ([id])
)
GO

ALTER TABLE [dbo].[AccountNumberMap]
  ADD CONSTRAINT [FK_AccountNumberMap_AccountNumberTypes] FOREIGN KEY ([accountnumbertype_id]) REFERENCES [dbo].[AccountNumberTypes] ([id])
GO

ALTER TABLE [dbo].[AccountNumberMap]
  ADD CONSTRAINT [FK_AccountNumberMap_Accounts] FOREIGN KEY ([account_id]) REFERENCES [dbo].[Accounts] ([id])
GO