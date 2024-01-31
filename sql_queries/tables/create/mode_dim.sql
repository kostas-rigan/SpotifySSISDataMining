USE [spotify]
GO

/****** Object:  Table [dbo].[mode_dim]    Script Date: 31/1/2024 11:14:00 πμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[mode_dim](
	[mode_id] [int] IDENTITY(0,1) NOT NULL,
	[mode_label] [char](5) NOT NULL,
 CONSTRAINT [PK_mode_dim] PRIMARY KEY CLUSTERED 
(
	[mode_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
