USE [spotify]
GO

/****** Object:  Table [dbo].[artist_dim]    Script Date: 15/2/2024 6:36:53 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[artist_dim](
	[artist_id] [int] IDENTITY(1,1) NOT NULL,
	[artist_name] [varchar](250) NULL,
	[artist_popularity] [int] NULL,
	[artist_followers] [int] NULL,
	[genre] [int] NULL,
 CONSTRAINT [PK_artist_dim] PRIMARY KEY CLUSTERED 
(
	[artist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[artist_dim]  WITH CHECK ADD  CONSTRAINT [FK_artist_dim_genre_dim] FOREIGN KEY([genre])
REFERENCES [dbo].[genre_dim] ([genre_id])
GO

ALTER TABLE [dbo].[artist_dim] CHECK CONSTRAINT [FK_artist_dim_genre_dim]
GO

