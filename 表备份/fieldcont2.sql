/*
 Navicat Premium Data Transfer

 Source Server         : WEGO
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : .:1433
 Source Catalog        : DRGS_EXPLAIN
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 24/04/2025 08:58:31
*/


-- ----------------------------
-- Table structure for fieldcont2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fieldcont2]') AND type IN ('U'))
	DROP TABLE [dbo].[fieldcont2]
GO

CREATE TABLE [dbo].[fieldcont2] (
  [ID] bigint  NOT NULL,
  [PARENTID] bigint  NULL,
  [ZDNAME] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HZDNAME] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ZDCODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [HZDCODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ERRORCODE] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [BZ] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[fieldcont2] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont2',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父ID',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont2',
'COLUMN', N'PARENTID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段名称',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont2',
'COLUMN', N'ZDNAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段名称汉字',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont2',
'COLUMN', N'HZDNAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段代码',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont2',
'COLUMN', N'ZDCODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段代码汉字',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont2',
'COLUMN', N'HZDCODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段类型',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont2',
'COLUMN', N'TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'对应出错列名',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont2',
'COLUMN', N'ERRORCODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont2',
'COLUMN', N'BZ'
GO


-- ----------------------------
-- Records of fieldcont2
-- ----------------------------
INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'1', NULL, N'hi_type', N'医保类型', NULL, NULL, NULL, N'hi_type', NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'2', N'1', N'hi_type', N'医保类型', N'310', N'职工基本医疗保险', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'3', N'1', N'hi_type', N'医保类型', N'390', N'城乡居民基本医疗保险', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'4', N'1', N'hi_type', N'医保类型', N'999', N'其他医疗保障', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'5', NULL, N'anst_way', N'麻醉方式', NULL, NULL, NULL, N'anst_mtd_code', NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'6', N'5', N'anst_way', N'麻醉方式', N'1', N'全身麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'7', N'5', N'anst_way', N'麻醉方式', N'11', N'吸入麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'8', N'5', N'anst_way', N'麻醉方式', N'12', N'静脉麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'9', N'5', N'anst_way', N'麻醉方式', N'13', N'基础麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'10', N'5', N'anst_way', N'麻醉方式', N'2', N'椎管内麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'11', N'5', N'anst_way', N'麻醉方式', N'21', N'蛛网膜下腔阻滞麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'12', N'5', N'anst_way', N'麻醉方式', N'22', N'硬脊膜外腔阻滞麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'13', N'5', N'anst_way', N'麻醉方式', N'3', N'局部麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'14', N'5', N'anst_way', N'麻醉方式', N'31', N'神经丛阻滞麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'15', N'5', N'anst_way', N'麻醉方式', N'32', N'神经节阻滞麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'16', N'5', N'anst_way', N'麻醉方式', N'33', N'神经阻滞麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'17', N'5', N'anst_way', N'麻醉方式', N'34', N'区域阻滞麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'18', N'5', N'anst_way', N'麻醉方式', N'35', N'局部浸润麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'19', N'5', N'anst_way', N'麻醉方式', N'36', N'表面麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'20', N'5', N'anst_way', N'麻醉方式', N'4', N'复合麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'21', N'5', N'anst_way', N'麻醉方式', N'41', N'静吸复合全麻 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'22', N'5', N'anst_way', N'麻醉方式', N'42', N'针药复合麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'23', N'5', N'anst_way', N'麻醉方式', N'43', N'神经丛与硬膜外阻滞复合麻醉 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'24', N'5', N'anst_way', N'麻醉方式', N'44', N'全麻复合全身降温 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'25', N'5', N'anst_way', N'麻醉方式', N'45', N'全麻复合控制性降压 ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont2] ([ID], [PARENTID], [ZDNAME], [HZDNAME], [ZDCODE], [HZDCODE], [TYPE], [ERRORCODE], [BZ]) VALUES (N'26', N'5', N'anst_way', N'麻醉方式', N'9', N'其他麻醉方法 ', NULL, NULL, NULL)
GO


-- ----------------------------
-- Primary Key structure for table fieldcont2
-- ----------------------------
ALTER TABLE [dbo].[fieldcont2] ADD CONSTRAINT [PK__fieldcon__3214EC2753ABF202] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

