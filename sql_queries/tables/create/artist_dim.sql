USE [spotify]
GO

/****** Object:  Table [dbo].[artist_dim]    Script Date: 31/1/2024 11:11:51 πμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[artist_dim](
	[artist_id] [int] IDENTITY(1,1) NOT NULL,
	[artist_name] [varchar](250) NULL,
	[artist_popularity] [int] NULL,
	[artist_followers] [int] NULL,
 CONSTRAINT [PK_artist_dim] PRIMARY KEY CLUSTERED 
(
	[artist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

