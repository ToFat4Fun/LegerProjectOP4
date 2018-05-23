use AuditBlackBox
GO

ALTER TABLE [AuditBlackBox].[dbo].[Rol] ADD RolID int --add column 

UPDATE [dbo].[Rol]
   SET [RolID] = 1926 + ID

GO