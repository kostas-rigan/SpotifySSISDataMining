USE [spotify]
GO

/****** Object:  Table [dbo].[explicit_dim]    Script Date: 31/1/2024 11:12:56 πμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[explicit_dim](
	[explicit_id] [int] IDENTITY(0,1) NOT NULL,
	[explicit_label] [varchar](12) NOT NULL,
 CONSTRAINT [PK_explicit_dim] PRIMARY KEY CLUSTERED 
(
	[explicit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


