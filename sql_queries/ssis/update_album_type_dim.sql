INSERT INTO [dbo].[album_type_dim]
SELECT DISTINCT [album_type]
FROM [dbo].[album];