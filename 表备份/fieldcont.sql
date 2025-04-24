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

 Date: 24/04/2025 14:10:13
*/


-- ----------------------------
-- Table structure for fieldcont
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fieldcont]') AND type IN ('U'))
	DROP TABLE [dbo].[fieldcont]
GO

CREATE TABLE [dbo].[fieldcont] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [PARENTID] bigint  NULL,
  [TABLENAME] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [HTABLENAME] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ZDCODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [HZDCODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [BZ] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[fieldcont] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'父ID',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont',
'COLUMN', N'PARENTID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段所在表名称',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont',
'COLUMN', N'TABLENAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段解释',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont',
'COLUMN', N'HTABLENAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段代码',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont',
'COLUMN', N'ZDCODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段汉字',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont',
'COLUMN', N'HZDCODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段类型',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont',
'COLUMN', N'TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'fieldcont',
'COLUMN', N'BZ'
GO


-- ----------------------------
-- Records of fieldcont
-- ----------------------------
SET IDENTITY_INSERT [dbo].[fieldcont] ON
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1', NULL, N't_drg_result', N'入组信息', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'2', N'1', N't_drg_result', N'入组信息', N'id', N'id', N'bigint', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'3', N'1', N't_drg_result', N'入组信息', N'yljgdm', N'医疗机构代码', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'4', N'1', N't_drg_result', N'入组信息', N'yljgmc', N'医疗机构名称', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'5', N'1', N't_drg_result', N'入组信息', N'jzlsh', N'就诊流水号', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'6', N'1', N't_drg_result', N'入组信息', N'bah', N'病案号', N'nvarchar(32)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'7', N'1', N't_drg_result', N'入组信息', N'inhospitaltype', N'住院类型', N'smallint', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'8', N'1', N't_drg_result', N'入组信息', N'newbodybirthweight', N'新生儿出生体重', N'decimal(18, 4)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'9', N'1', N't_drg_result', N'入组信息', N'newbodyadmissionweight', N'新生儿入院体重', N'decimal(18, 4)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'10', N'1', N't_drg_result', N'入组信息', N'age', N'年龄', N'decimal(4, 1)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'11', N'1', N't_drg_result', N'入组信息', N'newbodyday', N'新生儿年龄天', N'decimal(18, 4)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'12', N'1', N't_drg_result', N'入组信息', N'mdccode', N'mdc诊断大类', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'13', N'1', N't_drg_result', N'入组信息', N'mdcname', N'mdc诊断大类名称', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'14', N'1', N't_drg_result', N'入组信息', N'adrgcode', N'adrg编码', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'15', N'1', N't_drg_result', N'入组信息', N'adrgname', N'adrg名称', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'16', N'1', N't_drg_result', N'入组信息', N'drgcode', N'drg组编码', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'17', N'1', N't_drg_result', N'入组信息', N'drgname', N'drg组名称', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'18', N'1', N't_drg_result', N'入组信息', N'totalcost', N'总费用', N'decimal(18, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'19', N'1', N't_drg_result', N'入组信息', N'day', N'住院天数', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'20', N'1', N't_drg_result', N'入组信息', N'outhospitalway', N'离院方式', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'21', N'1', N't_drg_result', N'入组信息', N'rw', N'权重', N'decimal(18, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'22', N'1', N't_drg_result', N'入组信息', N'basepoint', N'基准点数', N'decimal(18, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'23', N'1', N't_drg_result', N'入组信息', N'settlepoint', N'结算点数', N'decimal(18, 8)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'24', N'1', N't_drg_result', N'入组信息', N'pointcost', N'点值', N'decimal(18, 8)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'25', N'1', N't_drg_result', N'入组信息', N'insurtype', N'医保类型', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'26', N'1', N't_drg_result', N'入组信息', N'insurcost', N'医保结算  --暂时不使用', N'decimal(18, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'27', N'1', N't_drg_result', N'入组信息', N'settlecost', N'预计结算费用', N'decimal(18, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'28', N'1', N't_drg_result', N'入组信息', N'remark', N'入组失败提示', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'29', N'1', N't_drg_result', N'入组信息', N'code', N'入组状态', N'smallint', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'30', N'1', N't_drg_result', N'入组信息', N'errormsg', N'错误信息', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'31', N'1', N't_drg_result', N'入组信息', N'settletime', N'结算时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'32', N'1', N't_drg_result', N'入组信息', N'inserttime', N'入组时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'33', N'1', N't_drg_result', N'入组信息', N'ver', N'版本', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'34', N'1', N't_drg_result', N'入组信息', N'profitloss', N'盈亏', N'decimal(18, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'35', N'1', N't_drg_result', N'入组信息', N'isqy', N'是否歧义组', N'bit', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'36', N'1', N't_drg_result', N'入组信息', N'isunstable', N'是否稳定组', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'37', NULL, N't_setlinfo_oprninfo', N'结算清单手术操作信息表', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'38', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'id', N'id', N'uniqueidentifier', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'39', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'mdtrt_sn', N'就医流水号', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'40', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oprn_oprt_type', N'手术操作类别', N'nvarchar(10)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'41', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oprn_oprt_name', N'手术操作名称', N'nvarchar(500)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'42', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oprn_oprt_code', N'手术操作代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'43', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oprn_oprt_date', N'手术操作日期', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'44', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oprn_oprt_begn_date', N'手术操作起始时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'45', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oprn_oprt_end_date', N'手术操作结束时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'46', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'anst_way', N'麻醉方式', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'47', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oper_dr_name', N'术者医师姓名', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'48', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oper_dr_code', N'术者医师代码', N'nvarchar(20)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'49', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oper_dr_code_std', N'术者标准代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'50', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'anst_dr_name', N'麻醉医师姓名', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'51', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'anst_dr_code', N'麻醉医师代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'52', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'anst_dr_code_std', N'麻醉医师标准代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'53', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'anst_begn_date', N'麻醉起始时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'54', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'anst_end_date', N'麻醉结束时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'55', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'sort', N'手术序号', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'56', N'37', N't_setlinfo_oprninfo', N'结算清单手术操作信息表', N'oprn_oprt_lev', N'手术操作等级', N'nvarchar(10)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'57', NULL, N't_setlinfo', N'结算清单患者基本信息表', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'58', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'id', N'id', N'bigint', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'59', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'mdtrt_sn', N'就诊流水号', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'60', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'fixmedins_name', N'定点医药机构名称', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'61', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'fixmedins_code', N'定点医药机构编码', N'nvarchar(12)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'62', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'hi_setl_lv', N'医保结算等级', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'63', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'hi_no', N'医保编号', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'64', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medcasno', N'病案号', N'nvarchar(40)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'65', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'dcla_time', N'申报时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'66', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'psn_name', N'人员姓名', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'67', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'gend', N'性别', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'68', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'brdy', N'出生日期', N'nvarchar(10)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'69', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'age', N'年龄', N'decimal(4, 1)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'70', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'ntly', N'国籍', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'71', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'nwb_age', N'（年龄不足 1 周岁）年龄', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'72', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'naty', N'民族', N'nvarchar(12)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'73', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'patn_cert_type', N'患者证件类别', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'74', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'certno', N'证件号码', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'75', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'prfs', N'职业', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'76', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'curr_addr', N'现住址', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'77', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'curr_addr_provcode', N'现住址_省代码', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'78', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'curr_addr_rdgncode', N'现住址_市代码', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'79', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'curr_addr_cotycode', N'现住址_县区代码', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'80', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'emp_name', N'单位名称', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'81', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'emp_addr', N'单位地址', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'82', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'emp_tel', N'单位电话', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'83', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'poscode', N'邮编', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'84', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'coner_name', N'联系人姓名', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'85', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'patn_rlts', N'与患者关系', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'86', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'coner_addr', N'联系人地址', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'87', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'coner_tel', N'联系人电话', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'88', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'hi_type', N'医保类型', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'89', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'insuplc', N'参保地', N'nvarchar(8)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'90', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'sp_psn_type', N'特殊人员类型', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'91', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'nwb_adm_type', N'新生儿入院类型', N'nvarchar(10)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'92', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'nwb_bir_wt', N'新生儿出生体重', N'decimal(7, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'93', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'nwb_adm_wt', N'新生儿入院体重', N'decimal(7, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'94', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'opsp_diag_caty', N'门诊慢特病诊断科别', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'95', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'opsp_mdtrt_date', N'门诊慢特病就诊日期', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'96', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'ipt_med_type', N'住院医疗类型', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'97', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'adm_way', N'入院途径', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'98', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'trt_type', N'治疗类别', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'99', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'adm_time', N'入院时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'100', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'adm_caty', N'入院科别', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'101', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'refldept_dept', N'转科科别', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'102', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'refldept_dept1', N'转科科别1', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'103', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'refldept_dept2', N'转科科别2', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'104', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'refldept_dept3', N'转科科别3', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'105', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'refldept_dept4', N'转科科别4', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'106', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'refldept_dept5', N'转科科别5', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'107', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'dscg_time', N'出院时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'108', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'dscg_caty', N'出院科别', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'109', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'act_ipt_days', N'实际住院天数', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'110', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'otp_wm_dise', N'门（急）诊西医诊断', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'111', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'wm_dise_code', N'西医诊断疾病代码', N'nvarchar(20)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'112', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'otp_tcm_dise', N'门（急）诊中医诊断', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'113', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'tcm_dise_code', N'中医诊断代码', N'nvarchar(20)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'114', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'diag_code_cnt', N'诊断代码计数', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'115', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'oprn_oprt_code_cnt', N'手术操作代码计数', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'116', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'vent_used_dura', N'呼吸机使用时长', N'nvarchar(10)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'117', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'pwcry_bfadm_coma_dura', N'颅脑损伤患者入院前昏迷时长', N'nvarchar(10)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'118', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'pwcry_afadm_coma_dura', N'颅脑损伤患者入院后昏迷时长', N'nvarchar(10)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'119', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'bld_cat', N'输血品种', N'nvarchar(256)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'120', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'bld_amt', N'输血量', N'nvarchar(256)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'121', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'bld_unt', N'输血计量单位', N'nvarchar(256)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'122', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'spga_nurscare_days', N'特级护理天数', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'123', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'lv1_nurscare_days', N'一级护理天数', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'124', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'scd_nurscare_days', N'二级护理天数', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'125', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'lv3_nurscare_days', N'三级护理天数', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'126', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'dscg_way', N'离院方式', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'127', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'acp_medins_name', N'拟接收机构名称', N'nvarchar(100)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'128', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'acp_optins_code', N'拟接收机构代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'129', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'bill_code', N'票据代码', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'130', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'bill_no', N'票据号码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'131', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'biz_sn', N'业务流水号', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'132', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'days_rinp_flag_31', N'出院 31 天内再住院计划标志', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'133', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'days_rinp_pup_31', N'出院 31 天内再住院目的', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'134', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'chfpdr_name', N'主诊医师姓名', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'135', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'chfpdr_code', N'主诊医师代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'136', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'chfpdr_code_std', N'主诊医师标准代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'137', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'resp_nurs_code', N'责任护士代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'138', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'resp_nurs_name', N'责任护士姓名', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'139', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'resp_nurs_code_std', N'责任护士标准代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'140', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'setl_begn_date', N'结算开始日期', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'141', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'setl_end_date', N'结算结束日期', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'142', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'psn_selfpay', N'个人自付', N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'143', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'psn_ownpay', N'个人自费', N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'144', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'acct_pay', N'个人账户支出', N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'145', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'psn_cashpay', N'个人现金支付', N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'146', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'hi_paymtd', N'医保支付方式', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'147', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'hsorg_code', N'医保机构代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'148', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'hsorg', N'医保机构', N'nvarchar(100)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'149', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'hsorg_opter_code', N'医保机构机构经办人代码', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'150', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'hsorg_opter', N'医保机构经办人', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'151', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medins_fill_dept', N'医药机构填报部门', N'nvarchar(100)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'152', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medins_fill_psn', N'医药机构填报人', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'153', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'setl_list_id', N'上传id（系统生成）', N'nvarchar(100)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'154', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'cyksbm', N'出院科室编码', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'155', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'cyksbm_area', N'行政科室代码（威海卫专用）', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'156', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'ryksbm', N'入院科室编码', N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'157', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'ryksmc', N'入院科室名称', N'nvarchar(128)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'158', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'cyksmc', N'出院科室名称', N'nvarchar(128)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'159', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'brjsrq', N'病人结算日期', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'160', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'brjsrq_dateofmonth', N'病人结算月份', N'date', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'161', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medical_group', NULL, N'nvarchar(100)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'162', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'drug_fee', NULL, N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'163', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'west_drug_fee', NULL, N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'164', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'chinese_drug_fee', NULL, N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'165', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'chinese_slice_drug_fee', NULL, N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'166', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'consumable_fee', NULL, N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'167', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'check_fee', NULL, N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'168', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medical_fee', NULL, N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'169', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'total_fee', NULL, N'decimal(16, 2)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'170', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'main_oper_dr_name', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'171', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medicalinsurancecoder', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'172', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medicalinsurancecodetime', NULL, N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'173', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medicalrecordcoder', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'174', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medicalrecordcodetime', NULL, N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'175', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'medical_zz_time', NULL, N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'176', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'isdrg', NULL, N'smallint', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'177', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'main_diag_code', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'178', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'main_diag_name', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'179', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'other_diag_code1', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'180', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'other_diag_name1', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'181', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'main_oper_oprn_code', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'182', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'main_oper_oprn_name', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'183', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'createtime', N'创建时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'184', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'is_rjbf', N'日间病房标识', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'185', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'fcurdate', N'最后修改时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'186', N'57', N't_setlinfo', N'结算清单患者基本信息表', N'ex_flag', N'编码完成标识', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'187', NULL, N't_mihs_result', N'上报记录表', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'188', N'187', N't_mihs_result', N'上报记录表', N'id', N'ID', N'bigint', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'189', N'187', N't_mihs_result', N'上报记录表', N'uid', N'就诊流水号', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'190', N'187', N't_mihs_result', N'上报记录表', N'info', N'接口号4101', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'191', N'187', N't_mihs_result', N'上报记录表', N'msgid', N'id', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'192', N'187', N't_mihs_result', N'上报记录表', N'insuplc_admdvs', N'参保地', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'193', N'187', N't_mihs_result', N'上报记录表', N'mdtrtarea_admvs', N'参保地', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'194', N'187', N't_mihs_result', N'上报记录表', N'recer_sys_code', N'系统来源', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'195', N'187', N't_mihs_result', N'上报记录表', N'dev_no', NULL, N'nvarchar(100)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'196', N'187', N't_mihs_result', N'上报记录表', N'dev_safe_info', NULL, N'nvarchar(2000)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'197', N'187', N't_mihs_result', N'上报记录表', N'infver', N'版本号', N'nvarchar(6)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'198', N'187', N't_mihs_result', N'上报记录表', N'opter_type', N'操作类型', N'nvarchar(3)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'199', N'187', N't_mihs_result', N'上报记录表', N'opter', N'操作人id', N'nvarchar(30)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'200', N'187', N't_mihs_result', N'上报记录表', N'opter_name', N'操作人', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'201', N'187', N't_mihs_result', N'上报记录表', N'inf_time', N'上报时间', N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'202', N'187', N't_mihs_result', N'上报记录表', N'fixmedins_code', N'医疗机构代码', N'nvarchar(12)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'203', N'187', N't_mihs_result', N'上报记录表', N'infocode', N'上报状态', N'int', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'204', N'187', N't_mihs_result', N'上报记录表', N'sign_no', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'205', N'187', N't_mihs_result', N'上报记录表', N'input', N'输入数据', N'text', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'206', N'187', N't_mihs_result', N'上报记录表', N'inputdata', N'输入数据', N'text', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'207', N'187', N't_mihs_result', N'上报记录表', N'inf_refmsgid', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'208', N'187', N't_mihs_result', N'上报记录表', N'refmsg_time', NULL, N'nvarchar(17)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'209', N'187', N't_mihs_result', N'上报记录表', N'respond_time', NULL, N'nvarchar(17)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'210', N'187', N't_mihs_result', N'上报记录表', N'cainfo', NULL, N'nvarchar(1000)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'211', N'187', N't_mihs_result', N'上报记录表', N'signtype', NULL, N'nvarchar(10)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'212', N'187', N't_mihs_result', N'上报记录表', N'err_msg', N'报错信息', N'text', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'213', N'187', N't_mihs_result', N'上报记录表', N'warn_msg', NULL, N'nvarchar(200)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'214', N'187', N't_mihs_result', N'上报记录表', N'output', N'返回数据', N'text', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'215', N'187', N't_mihs_result', N'上报记录表', N'outputdata', N'返回数据', N'text', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'216', N'187', N't_mihs_result', N'上报记录表', N'createtime', NULL, N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'217', N'187', N't_mihs_result', N'上报记录表', N'medicalinsurancecoder', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'218', N'187', N't_mihs_result', N'上报记录表', N'medicalinsurancecodetime', NULL, N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'219', N'187', N't_mihs_result', N'上报记录表', N'medicalrecordcoder', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'220', N'187', N't_mihs_result', N'上报记录表', N'medicalrecordcodetime', NULL, N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'221', N'187', N't_mihs_result', N'上报记录表', N'brjsrq', NULL, N'datetime2(7)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'222', N'187', N't_mihs_result', N'上报记录表', N'medins_fill_dept', NULL, N'nvarchar(100)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'223', N'187', N't_mihs_result', N'上报记录表', N'medins_fill_psn', NULL, N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'224', NULL, N't_mihs_result_relation', N'上报记录关联表', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'225', N'224', N't_mihs_result_relation', N'上报记录关联表', N'id', N'ID', N'bigint', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'226', N'224', N't_mihs_result_relation', N'上报记录关联表', N'uid', N'就诊流水号', N'nvarchar(100)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'227', N'224', N't_mihs_result_relation', N'上报记录关联表', N'resultid', N'外键id', N'bigint', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'228', N'224', N't_mihs_result_relation', N'上报记录关联表', N'info', N'接口号4101', N'nvarchar(50)', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'229', N'224', N't_mihs_result_relation', N'上报记录关联表', N'reupload', NULL, N'bit', NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'230', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'231', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'232', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'233', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'234', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'235', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'236', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'237', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'238', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'239', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'240', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'241', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'242', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'243', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'244', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'245', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'246', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'247', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'248', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'249', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'250', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'251', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'252', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'253', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'254', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'255', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'256', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'257', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'258', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'259', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'260', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'261', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'262', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'263', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'264', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'265', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'266', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'267', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'268', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'269', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'270', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'271', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'272', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'273', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'274', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'275', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'276', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'277', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'278', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'279', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'280', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'281', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'282', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'283', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'284', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'285', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'286', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'287', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'288', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'289', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'290', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'291', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'292', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'293', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'294', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'295', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'296', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'297', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'298', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'299', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'300', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'301', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'302', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'303', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'304', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'305', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'306', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'307', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'308', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'309', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'310', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'311', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'312', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'313', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'314', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'315', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'316', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'317', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'319', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'320', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'321', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'322', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'323', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'324', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'325', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'326', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'327', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'328', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'329', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'330', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'331', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'332', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'333', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'334', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'335', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'336', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'337', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'338', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'339', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'340', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'341', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'342', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'343', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'344', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'345', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'346', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'347', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'348', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'349', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'350', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'351', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'352', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'353', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'354', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'355', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'356', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'357', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'358', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'359', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'360', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'361', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'362', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'363', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'364', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'365', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'366', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'367', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'368', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'369', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'370', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'371', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'372', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'373', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'374', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'375', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'376', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'377', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'378', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'379', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'380', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'381', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'382', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'383', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'384', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'385', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'386', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'387', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'388', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'389', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'390', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'391', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'392', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'393', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'394', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'395', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'396', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'397', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'398', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'399', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'400', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'401', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'402', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'403', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'404', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'405', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'406', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'407', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'408', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'409', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'410', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'411', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'412', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'413', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'414', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'415', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'416', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'417', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'418', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'419', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'420', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'421', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'422', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'423', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'424', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'425', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'426', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'427', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'428', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'429', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'430', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'431', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'432', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'433', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'434', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'435', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'436', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'437', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'438', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'439', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'440', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'441', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'442', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'443', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'444', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'445', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'446', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'447', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'448', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'449', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'450', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'451', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'452', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'453', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'454', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'455', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'456', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'457', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'458', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'459', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'460', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'461', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'462', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'463', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'464', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'465', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'466', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'467', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'468', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'469', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'470', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'471', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'472', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'473', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'474', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'475', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'476', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'477', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'478', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'479', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'480', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'481', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'482', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'483', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'484', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'485', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'486', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'487', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'488', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'489', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'490', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'491', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'492', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'493', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'494', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'495', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'496', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'497', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'498', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'499', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'500', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'501', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'502', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'503', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'504', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'505', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'506', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'507', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'508', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'509', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'510', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'511', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'512', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'513', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'514', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'515', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'516', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'517', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'518', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'519', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'520', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'521', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'522', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'523', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'524', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'525', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'526', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'527', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'528', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'529', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'530', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'531', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'532', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'533', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'534', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'535', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'536', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'537', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'538', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'539', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'540', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'541', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'542', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'543', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'544', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'545', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'546', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'547', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'548', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'549', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'550', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'551', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'552', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'553', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'554', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'555', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'556', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'557', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'558', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'559', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'560', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'561', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'562', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'563', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'564', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'565', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'566', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'567', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'568', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'569', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'570', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'571', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'572', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'573', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'574', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'575', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'576', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'577', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'578', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'579', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'580', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'581', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'582', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'583', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'584', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'585', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'586', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'587', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'588', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'589', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'590', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'591', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'592', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'593', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'594', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'595', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'596', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'597', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'598', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'599', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'600', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'601', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'602', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'603', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'604', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'605', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'606', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'607', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'608', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'609', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'610', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'611', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'612', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'613', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'614', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'615', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'616', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'617', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'618', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'619', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'620', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'621', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'622', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'623', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'624', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'625', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'626', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'627', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'628', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'629', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'630', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'631', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'632', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'633', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'634', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'635', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'636', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'637', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'638', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'639', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'640', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'641', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'642', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'643', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'644', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'645', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'646', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'647', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'648', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'649', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'650', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'651', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'652', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'653', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'654', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'655', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'656', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'657', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'658', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'659', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'660', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'661', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'662', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'663', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'664', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'665', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'666', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'667', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'668', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'669', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'670', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'671', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'672', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'673', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'674', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'675', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'676', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'677', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'678', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'679', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'680', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'681', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'682', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'683', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'684', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'685', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'686', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'687', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'688', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'689', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'690', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'691', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'692', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'693', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'694', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'695', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'696', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'697', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'698', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'699', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'700', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'701', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'702', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'703', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'704', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'705', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'706', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'707', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'708', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'709', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'710', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'711', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'712', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'713', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'714', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'715', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'716', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'717', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'718', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'719', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'720', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'721', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'722', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'723', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'724', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'725', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'726', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'727', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'728', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'729', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'730', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'731', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'732', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'733', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'734', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'735', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'736', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'737', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'738', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'739', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'740', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'741', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'742', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'743', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'744', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'745', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'746', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'747', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'748', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'749', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'750', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'751', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'752', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'753', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'754', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'755', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'756', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'757', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'758', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'759', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'760', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'761', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'762', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'763', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'764', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'765', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'766', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'767', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'768', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'769', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'770', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'771', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'772', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'773', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'774', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'775', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'776', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'777', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'778', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'779', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'780', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'781', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'782', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'783', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'784', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'785', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'786', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'787', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'788', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'789', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'790', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'791', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'792', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'793', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'794', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'795', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'796', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'797', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'798', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'799', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'800', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'801', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'802', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'803', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'804', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'805', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'806', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'807', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'808', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'809', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'810', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'811', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'812', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'813', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'814', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'815', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'816', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'817', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'818', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'819', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'820', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'821', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'822', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'823', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'824', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'825', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'826', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'827', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'828', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'829', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'830', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'831', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'832', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'833', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'834', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'835', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'836', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'837', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'838', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'839', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'840', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'841', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'842', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'843', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'844', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'845', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'846', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'847', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'848', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'849', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'850', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'851', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'852', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'853', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'854', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'855', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'856', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'857', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'858', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'859', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'860', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'861', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'862', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'863', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'864', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'865', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'866', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'867', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'868', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'869', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'870', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'871', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'872', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'873', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'874', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'875', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'876', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'877', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'878', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'879', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'880', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'881', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'882', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'883', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'884', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'885', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'886', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'887', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'888', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'889', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'890', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'891', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'892', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'893', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'894', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'895', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'896', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'897', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'898', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'899', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'900', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'901', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'902', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'903', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'904', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'905', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'906', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'907', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'908', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'909', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'910', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'911', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'912', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'913', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'914', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'915', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'916', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'917', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'918', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'919', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'920', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'921', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'922', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'923', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'924', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'925', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'926', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'927', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'928', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'929', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'930', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'931', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'932', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'933', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'934', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'935', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'936', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'937', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'938', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'939', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'940', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'941', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'942', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'943', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'944', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'945', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'946', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'947', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'948', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'949', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'950', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'951', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'952', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'953', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'954', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'955', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'956', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'957', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'958', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'959', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'960', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'961', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'962', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'963', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'964', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'965', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'966', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'967', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'968', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'969', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'970', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'971', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'972', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'973', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'974', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'975', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'976', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'977', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'978', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'979', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'980', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'981', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'982', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'983', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'984', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'985', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'986', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'987', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'988', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'989', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'990', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'991', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'992', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'993', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'994', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'995', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'996', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'997', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'998', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'999', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1001', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1002', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1003', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1004', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1005', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1006', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1007', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1008', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1009', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1010', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1011', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1012', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1013', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1014', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1015', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1016', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1017', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1018', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1019', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1020', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1021', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1022', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1023', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1024', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1025', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1027', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1028', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1029', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1030', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1031', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1032', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1033', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1034', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1035', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1036', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1037', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1038', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1039', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1040', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1041', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1042', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1043', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1044', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1045', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1046', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1047', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1048', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1049', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1050', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1051', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1052', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1053', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1054', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1055', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1056', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1057', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1058', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1059', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1060', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1061', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1062', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1063', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1064', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1065', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1066', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1067', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1068', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1069', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1070', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1071', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1072', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1073', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1074', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1075', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1076', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1077', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1078', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1079', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1080', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1081', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1082', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1083', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1084', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1085', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1086', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1087', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1088', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1089', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1090', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1091', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1092', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1093', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1094', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1095', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1096', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1097', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1098', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1099', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1100', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1101', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1102', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1103', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1104', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1105', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1106', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1107', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1108', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1109', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1110', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1112', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1113', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1114', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1115', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1116', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1117', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1118', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1119', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1120', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1121', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1122', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1123', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1124', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1125', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1126', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1127', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1128', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1129', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1130', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1131', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1132', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1133', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1134', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1135', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1136', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1137', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1138', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1139', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1140', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1141', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1142', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1143', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1144', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1145', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1146', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1147', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1148', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1149', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1150', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1151', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1152', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1153', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1154', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1155', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1156', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1157', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1158', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1159', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1160', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1161', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1162', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1163', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1164', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1165', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1166', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1167', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1168', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1169', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1170', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1171', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1172', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1173', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1174', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1175', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1176', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1177', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1178', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1179', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1180', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1181', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1182', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1183', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1184', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1185', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1186', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1187', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1188', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1189', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1190', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1191', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1192', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1193', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1194', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1195', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1196', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1197', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1198', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1199', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1201', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1202', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1203', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1204', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1205', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1206', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1207', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1208', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1209', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1210', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1211', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1213', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1214', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1215', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1216', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1217', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1218', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1219', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1220', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1221', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1222', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1223', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1224', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1225', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1226', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1227', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1228', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1229', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1232', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1233', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1235', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1236', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1237', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1238', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1239', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1240', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1241', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1242', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1243', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1244', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1245', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1246', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1247', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1248', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1249', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1250', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1251', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1252', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1253', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1254', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1255', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1256', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1257', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1258', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1259', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1260', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1261', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1262', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1263', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1264', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1265', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1266', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1267', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1268', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1269', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1270', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1271', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1272', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1273', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1274', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1275', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1276', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1277', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1278', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1279', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1280', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1281', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1282', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1283', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1284', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1285', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1286', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1287', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1288', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1289', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1290', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1291', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1292', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1293', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1294', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1295', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1296', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1297', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1298', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1299', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1300', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1301', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1302', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1303', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1304', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1305', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1306', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1307', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1308', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1309', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1310', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1311', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1312', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1313', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1314', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1315', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1316', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1317', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1318', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1319', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1320', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1321', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1322', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1323', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1324', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1325', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1326', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1327', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1328', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1329', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1330', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1331', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1332', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1333', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1334', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1335', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1336', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1337', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1338', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1339', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1340', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1341', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1342', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1343', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1344', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1345', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1346', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1347', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1348', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1349', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1350', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1351', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1352', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1353', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1354', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1355', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1356', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1357', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[fieldcont] ([ID], [PARENTID], [TABLENAME], [HTABLENAME], [ZDCODE], [HZDCODE], [TYPE], [BZ]) VALUES (N'1358', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[fieldcont] OFF
GO


-- ----------------------------
-- Auto increment value for fieldcont
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[fieldcont]', RESEED, 1358)
GO


-- ----------------------------
-- Primary Key structure for table fieldcont
-- ----------------------------
ALTER TABLE [dbo].[fieldcont] ADD CONSTRAINT [PK__fieldcon__3214EC27149112EF] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

