---��ѯ����汾 2023�겻��1.1������
select * from t_setlinfo a left join t_drg_result_relation b on a.mdtrt_sn=b.uid left join t_drg_result c on b.drgresult_id=c.id where brjsrq>='2023-01-01' and brjsrq<'2024-01-01' and ver!='1.1'

/*�������� 2023������
2023285082-6-001
078519,67-001
1109720,1-002
1112658,1-001*/


--��ѯ�ϱ�������Ϣ
select a.mdtrt_sn as ��ˮ��,a.brjsrq ����ʱ��,c.err_msg ������Ϣ
from t_setlinfo a
left join t_mihs_result_relation b on a.mdtrt_sn = b.uid
left join t_mihs_result c on b.resultid=c.id 
where infocode=-1 
and a.brjsrq>='2025-03-01' and a.brjsrq<'2025-04-01'
and err_msg not like '%ʡƽ̨%'


/*
2025��4��2��
250009724-1-004
2023223037-1-001
1004276-7-001

����ҽ�Ʊ��ϻ�������嵥��������������Ϣ��JSQD_OPERATION_INFO������У�����pkid��MDTRT_SN��2023223037-1-001��FIXMEDINS_CODE��000001��OPRN_OPRT_CODE��00.6500x008��OPRN_OPRT_DATE��TueMar2500��00��00CST2025��oprn_oprt_type��1��checkResult��OPER_DR_CODE_STD��������У�����OPER_DR_NAME��������У����󣻣�
*/


/*
2025��4��3�� 08��
2023223037-1-001	2025-03-30 10:04:28.0000000	����ҽ�Ʊ��ϻ�������嵥��������������Ϣ��JSQD_OPERATION_INFO������У�����pkid��MDTRT_SN��2023223037-1-001��FIXMEDINS_CODE��000001��OPRN_OPRT_CODE��00.6500x008��OPRN_OPRT_DATE��TueMar2500��00��00CST2025��oprn_oprt_type��1��checkResult��OPER_DR_CODE_STD��������У�����OPER_DR_NAME��������У����󣻣�
651709-13-001	2025-03-29 14:19:32.0000000	����ҽ�Ʊ��ϻ�������嵥��������������Ϣ��JSQD_OPERATION_INFO������У�����pkid��MDTRT_SN��651709-13-001��FIXMEDINS_CODE��000001��OPRN_OPRT_CODE��92.2800��OPRN_OPRT_DATE��ThuMar2715��05��46CST2025��oprn_oprt_type��1��checkResult��ANST_DR_CODE_STD��������У����󣻣�
077779-7-001	2025-03-17 11:15:40.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEANST_BEGN_DATEANST_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(???????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) 
240069097-1-001	2025-03-28 15:10:17.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEANST_BEGN_DATEANST_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(???????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated 
1049059-1-002	2025-03-20 15:30:56.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(?????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated 


2023223037-1-001	2025-03-30 10:04:28.0000000	����ҽ�Ʊ��ϻ�������嵥��������������Ϣ��JSQD_OPERATION_INFO������У�����pkid��MDTRT_SN��2023223037-1-001��FIXMEDINS_CODE��000001��OPRN_OPRT_CODE��00.6500x008��OPRN_OPRT_DATE��TueMar2500��00��00CST2025��oprn_oprt_type��1��checkResult��OPER_DR_CODE_STD��������У�����OPER_DR_NAME��������У����󣻣�
651709-13-001	2025-03-29 14:19:32.0000000	����ҽ�Ʊ��ϻ�������嵥��������������Ϣ��JSQD_OPERATION_INFO������У�����pkid��MDTRT_SN��651709-13-001��FIXMEDINS_CODE��000001��OPRN_OPRT_CODE��92.2800��OPRN_OPRT_DATE��ThuMar2715��05��46CST2025��oprn_oprt_type��1��checkResult��ANST_DR_CODE_STD��������У����󣻣�
*/

--�����ظ�����--ʱ���ظ�
---4
update t_setlinfo_oprninfo 
set  oprn_oprt_date=dateadd(MINUTE,1,oprn_oprt_date)  
where  id in (
	---3
	select  id
	from  (
		---2
		select   id,ROW_NUMBER() over(partition by mdtrt_sn,oprn_oprt_code,oprn_oprt_date   order by id) rn  
		from(
			select a.* 
			from t_setlinfo_oprninfo a,
				(select mdtrt_sn,oprn_oprt_code,oprn_oprt_date,count(*) cont
					from  t_setlinfo_oprninfo  
					group by mdtrt_sn,oprn_oprt_code,oprn_oprt_date  
					having count(*)>1
				 ) b 
			where a.mdtrt_sn=b.mdtrt_sn 
					and a.oprn_oprt_code=b.oprn_oprt_code  
					and a.oprn_oprt_date=b.oprn_oprt_date
					and a.mdtrt_sn in (
						 ---1
						select mdtrt_sn
						from t_setlinfo a  
						left join t_mihs_result_relation b on a.mdtrt_sn = b.uid 
						left join t_mihs_result c on b.resultid=c.id
						where c.infocode=-1 
								and c.err_msg not like '%ʡƽ̨%' 
								And c.err_msg   like  '%JSQD_OPERATION_INFO%' 
						)---1
				) a---2
		) id---3
	where rn=1
)---4

/*
1070947-5-001
250026649-1-002
*/

select  *  from  t_operation_code where insur_code='77.6904'
--63822	77.6900x061	��Ƥ׵�ǲ����䶳������	77.6904	׵�ǲ����г���	NULL
--����������  ��Ƥ׵�ǲ����䶳������  ��Ϊ ׵�ǲ����г���
--433997-6-001


---��ѯ����ʱ��Ψһ
SELECT mdtrt_sn,oprn_oprt_code,oprn_oprt_name,
	oprn_oprt_date,
    ROW_NUMBER() OVER ( PARTITION BY oprn_oprt_name, oprn_oprt_date	ORDER BY oprn_oprt_date) AS rn1,
    oprn_oprt_begn_date,
	ROW_NUMBER() OVER ( PARTITION BY oprn_oprt_name, oprn_oprt_begn_date ORDER BY oprn_oprt_begn_date) AS rn2,
	oprn_oprt_end_date,
	ROW_NUMBER() OVER ( PARTITION BY oprn_oprt_name, oprn_oprt_end_date  ORDER BY oprn_oprt_end_date) AS rn3,
	oper_dr_name, anst_dr_name
FROM t_setlinfo_oprninfo
WHERE mdtrt_sn = '250026649-1-002'
ORDER BY oprn_oprt_code, oprn_oprt_name, oprn_oprt_date;

--��ѯ���������ϱ�
declare @mdtrtsn varchar(255);
set @mdtrtsn='250026649-1-002';
select * from t_setlinfo_oprninfo
where mdtrt_sn=@mdtrtsn order by oprn_oprt_code,oprn_oprt_date;

select * from t_setlinfo_diseinfo
where mdtrt_sn=@mdtrtsn order by diag_code;

/*����
###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated

###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline
###Theerroroccurredwhilesettingparameters
###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEANST_BEGN_DATEANST_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(???????????????????????????????)
###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated

��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated
��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated
*/

