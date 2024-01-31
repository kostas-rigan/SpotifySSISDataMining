USE [spotify]
GO

/****** Object:  Table [dbo].[track_artist_dim]    Script Date: 31/1/2024 11:14:36 πμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[track_artist_dim](
	[track_id] [int] NOT NULL,
	[artist_id] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[track_artist_dim]  WITH CHECK ADD  CONSTRAINT [FK_track_artist_dim_artist_dim] FOREIGN KEY([artist_id])
REFERENCES [dbo].[artist_dim] ([artist_id])
GO

ALTER TABLE [dbo].[track_artist_dim] CHECK CONSTRAINT [FK_track_artist_dim_artist_dim]
GO

ALTER TABLE [dbo].[track_artist_dim]  WITH CHECK ADD  CONSTRAINT [FK_track_artist_dim_track_fact] FOREIGN KEY([track_id])
REFERENCES [dbo].[track_fact] ([track_id])
GO

ALTER TABLE [dbo].[track_artist_dim] CHECK CONSTRAINT [FK_track_artist_dim_track_fact]
GO

