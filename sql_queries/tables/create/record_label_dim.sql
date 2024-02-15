USE [spotify]
GO

/****** Object:  Table [dbo].[record_label_dim]    Script Date: 15/2/2024 6:39:35 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[record_label_dim](
	[record_label_id] [int] IDENTITY(1,1) NOT NULL,
	[record_label_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_record_label_dim] PRIMARY KEY CLUSTERED 
(
	[record_label_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

