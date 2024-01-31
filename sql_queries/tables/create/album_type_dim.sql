USE [spotify]
GO

/****** Object:  Table [dbo].[album_type_dim]    Script Date: 31/1/2024 11:11:36 πμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[album_type_dim](
	[album_type_id] [int] IDENTITY(1,1) NOT NULL,
	[album_type_label] [varchar](50) NULL,
 CONSTRAINT [PK_album_type_dim] PRIMARY KEY CLUSTERED 
(
	[album_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

