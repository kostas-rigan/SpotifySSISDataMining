INSERT INTO [dbo].[record_label_dim]
SELECT DISTINCT [label]
FROM [dbo].[album];