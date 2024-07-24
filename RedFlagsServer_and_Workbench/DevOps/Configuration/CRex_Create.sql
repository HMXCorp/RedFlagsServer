SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[function_results]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[function_results](
		[function_date] [datetime2](7) NOT NULL,
		[function_name] [nvarchar](50) NOT NULL,
		[function_result] [nvarchar](50) NOT NULL,
		[key_entity_id] [int] NOT NULL
	) ON [PRIMARY]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[situation_results_bayesian]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[situation_results_bayesian](
		[network_name] [nvarchar](50) NOT NULL,
		[node_name] [nvarchar](50) NOT NULL,
		[state_name] [nvarchar](50) NOT NULL,
		[state_value] [float] NOT NULL,
		[node_type] [char](1) NOT NULL,
		[TransactionID] [int] NOT NULL,
		[username] [nvarchar](50) NULL,
		[date_of_evaluation] [datetime2](7) NOT NULL
	) ON [PRIMARY]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[situation_results_false]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[situation_results_false](
		[situation_id] [nvarchar](50) NOT NULL,
		[situation_name] [nvarchar](50) NOT NULL,
		[simulation_date] [datetime2](7) NULL,
		[key_entity_class] [nvarchar](50) NOT NULL,
		[key_entity_id] [int] NOT NULL,
		[evaluation_date] [datetime2](7) NOT NULL,
		[simulation_id] [int] NULL,
		[percept] [nvarchar](8) NOT NULL,
		[td_target] [float] NOT NULL,
		[td_result] [float] NOT NULL
	) ON [PRIMARY]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[situation_results_goal]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[situation_results_goal](
		[goal_id] [nvarchar](50) NOT NULL,
		[goal_name] [nvarchar](50) NOT NULL,
		[simulation_date] [datetime2](7) NULL,
		[instantaneous_satisfaction] [float] NOT NULL,
		[time_dynamic_satisfaction] [float] NOT NULL,
		[inherited] [nvarchar](15) NULL,
		[situation_count] [int] NULL,
		[desired_situation_count] [int] NULL,
		[subgoal_count] [int] NULL,
		[evaluation_date] [datetime2](7) NOT NULL,
		[simulation_id] [int] NULL
	) ON [PRIMARY]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[situation_results_true]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[situation_results_true](
		[situation_id] [nvarchar](50) NOT NULL,
		[situation_name] [nvarchar](50) NOT NULL,
		[simulation_date] [datetime2](7) NULL,
		[key_entity_class] [nvarchar](50) NOT NULL,
		[key_entity_id] [int] NOT NULL,
		[evaluation_date] [datetime2](7) NOT NULL,
		[simulation_id] [int] NULL,
		[percept] [nvarchar](8) NOT NULL,
		[td_target] [float] NOT NULL,
		[td_result] [float] NOT NULL
	) ON [PRIMARY]
END
GO