USE [spotify]
GO

/****** Object:  Index [IX_track_fact]    Script Date: 15/2/2024 6:52:14 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_track_fact] ON [dbo].[track_fact]
(
	[artist] ASC,
	[album] ASC,
	[name] ASC,
	[release_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

