USE [spotify]
GO

/****** Object:  Table [dbo].[album_dim]    Script Date: 31/1/2024 11:08:30 πμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[album_dim](
	[album_id] [int] IDENTITY(1,1) NOT NULL,
	[album_name] [varchar](305) NOT NULL,
	[album_type] [int] NOT NULL,
	[release_date] [date] NOT NULL,
	[album_popularity] [bigint] NOT NULL,
	[record_label] [int] NOT NULL,
 CONSTRAINT [PK_album_dim] PRIMARY KEY CLUSTERED 
(
	[album_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[album_dim]  WITH CHECK ADD  CONSTRAINT [FK_album_dim_album_type_dim] FOREIGN KEY([album_type])
REFERENCES [dbo].[album_type_dim] ([album_type_id])
GO

ALTER TABLE [dbo].[album_dim] CHECK CONSTRAINT [FK_album_dim_album_type_dim]
GO

ALTER TABLE [dbo].[album_dim]  WITH CHECK ADD  CONSTRAINT [FK_album_dim_record_label_dim] FOREIGN KEY([record_label])
REFERENCES [dbo].[record_label_dim] ([record_label_id])
GO

ALTER TABLE [dbo].[album_dim] CHECK CONSTRAINT [FK_album_dim_record_label_dim]
GO


