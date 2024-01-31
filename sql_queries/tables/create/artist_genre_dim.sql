USE [spotify]
GO

/****** Object:  Table [dbo].[artist_genre_dim]    Script Date: 31/1/2024 11:12:49 πμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[artist_genre_dim](
	[artist_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL
) ON [PRIMARY]
GO

