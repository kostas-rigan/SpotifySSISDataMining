USE [spotify]
GO

SET ANSI_PADDING ON
GO

/****** Object:  Index [IX_mode_dim]    Script Date: 15/2/2024 6:51:28 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_mode_dim] ON [dbo].[mode_dim]
(
	[mode_label] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

