USE [spotify]
GO

SET ANSI_PADDING ON
GO

/****** Object:  Index [IX_album_dim]    Script Date: 15/2/2024 6:44:15 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_album_dim] ON [dbo].[album_dim]
(
	[album_name] ASC,
	[album_popularity] ASC,
	[album_type] ASC,
	[record_label] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

