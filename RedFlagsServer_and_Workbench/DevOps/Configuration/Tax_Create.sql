SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaxPayer]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[TaxPayer](
		[KeyEntityID] [int] IDENTITY(1,1) NOT NULL,
		[TaxPayerId] [nvarchar](50) NOT NULL
	) ON [PRIMARY]

	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'RER-37356263-G')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'OHL-5316450-N')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'NQB-37497966-N')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'BEJ-20246949-I')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'FYJ-21328257-K')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'TYH-25136477-R')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'RXP-37585756-E')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'9EE-FAD01527-B')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'LWD-20785753-R')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'YRF-515517117-T')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'FTH-715824-A')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'JYN-78615326-O')
	INSERT [dbo].[TaxPayer] ([TaxPayerId]) VALUES (N'AGZ-2035104-I')
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoice]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[Invoice](
		[KeyEntityID] [int] IDENTITY(1,1) NOT NULL,
		[InvoiceId] [int] NOT NULL,
		[TaxPayerId] [nvarchar](50) NOT NULL
	) ON [PRIMARY]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceEvent]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[InvoiceEvent](
		[KeyEntityID] [int] IDENTITY(1,1) NOT NULL,
		[InvoiceId] [int] NOT NULL,
		[InvoiceEventType] [nvarchar](50) NOT NULL
	) ON [PRIMARY]
END
GO
