USE [spotify]
GO

/****** Object:  Table [dbo].[track_fact]    Script Date: 15/2/2024 6:39:48 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[track_fact](
	[track_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [int] NOT NULL,
	[album] [int] NOT NULL,
	[artist] [int] NOT NULL,
	[release_date] [date] NOT NULL,
	[explicit] [int] NOT NULL,
	[key] [int] NOT NULL,
	[mode] [int] NOT NULL,
	[track_popularity] [int] NULL,
	[danceability] [float] NULL,
	[energy] [float] NULL,
	[loudness] [float] NULL,
	[speechiness] [float] NULL,
	[acousticness] [float] NULL,
	[instrumentalness] [float] NULL,
	[liveness] [float] NULL,
	[valence] [float] NULL,
	[tempo] [float] NULL,
	[duration_s] [float] NULL,
 CONSTRAINT [PK_track_fact] PRIMARY KEY CLUSTERED 
(
	[track_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[track_fact]  WITH CHECK ADD  CONSTRAINT [FK_track_fact_album_dim] FOREIGN KEY([album])
REFERENCES [dbo].[album_dim] ([album_id])
GO

ALTER TABLE [dbo].[track_fact] CHECK CONSTRAINT [FK_track_fact_album_dim]
GO

ALTER TABLE [dbo].[track_fact]  WITH CHECK ADD  CONSTRAINT [FK_track_fact_artist_dim] FOREIGN KEY([artist])
REFERENCES [dbo].[artist_dim] ([artist_id])
GO

ALTER TABLE [dbo].[track_fact] CHECK CONSTRAINT [FK_track_fact_artist_dim]
GO

ALTER TABLE [dbo].[track_fact]  WITH CHECK ADD  CONSTRAINT [FK_track_fact_explicit_dim] FOREIGN KEY([explicit])
REFERENCES [dbo].[explicit_dim] ([explicit_id])
GO

ALTER TABLE [dbo].[track_fact] CHECK CONSTRAINT [FK_track_fact_explicit_dim]
GO

ALTER TABLE [dbo].[track_fact]  WITH CHECK ADD  CONSTRAINT [FK_track_fact_key_dim] FOREIGN KEY([key])
REFERENCES [dbo].[key_dim] ([key_id])
GO

ALTER TABLE [dbo].[track_fact] CHECK CONSTRAINT [FK_track_fact_key_dim]
GO

ALTER TABLE [dbo].[track_fact]  WITH CHECK ADD  CONSTRAINT [FK_track_fact_mode_dim] FOREIGN KEY([mode])
REFERENCES [dbo].[mode_dim] ([mode_id])
GO

ALTER TABLE [dbo].[track_fact] CHECK CONSTRAINT [FK_track_fact_mode_dim]
GO

ALTER TABLE [dbo].[track_fact]  WITH CHECK ADD  CONSTRAINT [FK_track_fact_name_dim] FOREIGN KEY([name])
REFERENCES [dbo].[name_dim] ([name_id])
GO

ALTER TABLE [dbo].[track_fact] CHECK CONSTRAINT [FK_track_fact_name_dim]
GO

