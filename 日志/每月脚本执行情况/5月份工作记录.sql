--��ϵͳ����סԺ��ˮ�ţ�11172401-001��ҽԺ���룺000001����ʡƽ̨��ѯ���ؾ�ҽ��Ϣʧ�ܣ����鱨������Ƿ�׼ȷ��
--ʡ����ظĶ���ҽ�ƻ�������Ͳα���
-- select insuplc from t_setlinfo where hi_no like '%372423%'

--�鿴����ִ��״̬
select id,zylsh,createdtime from t_job_settlebillinglist order by createdtime desc
-- select * from  [WEGOBI_DRGS].[dbo].[t_job] where id= '362976B6-3F2D-182B-360B-3A0962538462'
-- update [WEGOBI_DRGS].[dbo].[t_job]   set  jobstatus = '1' where id= '362976B6-3F2D-182B-360B-3A0962538462'
/*2025��5��28�� 14��29��
�Զ�ȡ����������������񡣲��ֶ�ִ��һ��ȡ������*/

--�ظ���������������oprn_oprt_date�С�������ʱ���롯��ȫһ��ʱ�����ϴ�ʧ��У�鲻ͨ����
--�ϱ�ʧ�ܴ�����ϢΪ��Υ��ΨһԼ������(JSQD_OPERATION_INFO)
-- exec updateOprtDate;


---��ѯ������Ϣ
select a.mdtrt_sn as ��ˮ��,a.brjsrq ����ʱ��,c.err_msg ������Ϣ
from t_setlinfo a
left join t_mihs_result_relation b on a.mdtrt_sn = b.uid
left join t_mihs_result c on b.resultid=c.id 
where c.infocode=-1 
and a.brjsrq>='2025-05-01' and a.brjsrq<'2025-06-01'-- cast(getdate() as date)
and err_msg not like '%ʡƽ̨%'

/*�޸�ƥ��ɹ�����У�鲻ͨ��������3����*/

/*2025��5��30�� 11��08�� 
��ˮ��	����ʱ��	������Ϣ
2023461649-2-001	2025-05-28 08:31:51.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEANST_BEGN_DATEANST_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(???????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) 
*/

/*2025��5��28�� 14��46��  2025��5��30�� 10��25��
��ˮ��	����ʱ��	������Ϣ
1116507-3-001	2025-05-26 10:35:40.0000000	����ҽ�Ʊ��ϻ�������嵥���߻�����Ϣ��JSQD_PATIENT_INFO������У�����pkid��MDTRT_SN��1116507-3-001��FIXMEDINS_CODE��000001��checkResult��BILL_CODE��������У�����BILL_NO��������У����󣻣�
2023867194-6-008*/

/*2025��5��28�� 08��34�� 
��ˮ��	����ʱ��	������Ϣ
083609-5-001	2025-05-24 09:39:27.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(?????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated */

/* 2025��5��22�� 13��45��
��ˮ��	����ʱ��	������Ϣ
998365-8-001	2025-05-19 10:04:23.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(?????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated 
1061122-8-002	2025-05-19 15:33:09.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEANST_BEGN_DATEANST_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(???????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) 
230076688-1-002	2025-05-20 12:09:48.0000000	����ҽ�Ʊ��ϻ�������嵥���߻�����Ϣ��JSQD_PATIENT_INFO������У�����pkid��MDTRT_SN��230076688-1-002��FIXMEDINS_CODE��000001��checkResult��BILL_CODE��������У�����BILL_NO��������У����󣻣�
*/

/*2025��5��21�� 17��05��
��ˮ��	����ʱ��	������Ϣ
998365-8-001	2025-05-19 10:04:23.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(?????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated */
/*2025��5��21�� 14��39��
202501 ҽ�� 6960;202501 DRG	6924
202502	YB	5760;202502 DRG	5760
202503	YB	7650;202503	DRG	7650
*/

/* 2025��5��21�� 13��18��
081632-27-001 �� δ�����ͬ���޶������� �������ⱨ��
*/

/*2025��5��19�� 13��34��
��ˮ��	����ʱ��	������Ϣ
2023394767-3-001	2025-05-15 13:31:57.0000000	����ҽ�Ʊ��ϻ�������嵥��������������Ϣ��JSQD_OPERATION_INFO������У�����pkid��MDTRT_SN��2023394767-3-001��FIXMEDINS_CODE��000001��OPRN_OPRT_CODE��99.2503��OPRN_OPRT_DATE��ThuMay0810��38��38CST2025��oprn_oprt_type��1��checkResult��ANST_DR_CODE_STD��������У����󣻣�

*/


/* 2025��5��19�� 07��49��
��ˮ��	����ʱ��	������Ϣ
1024193-4-001	2025-05-16 08:28:04.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEANST_BEGN_DATEANST_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(???????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated 
436567-6-001	2025-05-16 13:33:54.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEANST_BEGN_DATEANST_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(???????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) */

/*2025��5��16�� 13��29�� 
��ˮ��	����ʱ��	������Ϣ
1080400-2-001	2025-05-14 16:08:57.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEANST_BEGN_DATEANST_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(???????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) 
2023106301-2-001	2025-05-14 09:50:37.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEANST_BEGN_DATEANST_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(???????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated  ��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��uniqueconstraint(MIDR.OPERATION_UNIQUE_M)violated 
*/
/* 2025��5��12�� 09��30��
2023546161-1-001	2025-04-03 16:30:36.0000000	����ҽ�Ʊ��ϻ�������嵥���߻�����Ϣ��JSQD_PATIENT_INFO������У�����pkid��MDTRT_SN��2023546161-1-001��FIXMEDINS_CODE��000001��checkResult��BILL_CODE��������У�����BILL_NO��������У����󣻣�
999177-4-001	2025-05-04 11:23:42.0000000	����ҽ�Ʊ��ϻ�������嵥���߻�����Ϣ��JSQD_PATIENT_INFO������У�����pkid��MDTRT_SN��999177-4-001��FIXMEDINS_CODE��000001��checkResult��BILL_CODE��������У�����BILL_NO��������У����󣻣�
250035549-1-001	2025-05-02 09:13:37.0000000	����ҽ�Ʊ��ϻ�������嵥���߻�����Ϣ��JSQD_PATIENT_INFO������У�����pkid��MDTRT_SN��250035549-1-001��FIXMEDINS_CODE��000001��checkResult��BILL_CODE��������У�����BILL_NO��������У����󣻣�
939390-3-001	2025-04-24 08:28:48.0000000	���� ###Errorupdatingdatabase.Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ###Theerrormayinvolvecom.dareway.opel.medical.tb.dao.JsqdOperationInfoMapper.insertSelective-Inline ###Theerroroccurredwhilesettingparameters ###SQL��insertintoMIDR.JSQD_OPERATION_INFO(IDCITY_CODEOPERATION_TIMEBITMDTRT_SNFIXMEDINS_CODE_STDFIXMEDINS_CODEOPRN_OPRT_TYPEOPRN_OPRT_NAMEOPRN_OPRT_CODEOPRN_OPRT_DATEANST_WAYOPER_DR_NAMEOPER_DR_CODEANST_DR_NAMEANST_DR_CODEMAIN_OPRN_FLAGVALI_FLAGJRSJXGSJGDBZVERSIONSYNC_FLAGYLZD1YLZD2OPRN_OPRT_BEGN_DATEOPRN_OPRT_END_DATEOPER_DR_CODE_STDANST_DR_CODE_STD)values(?????????????????????????????) ###Cause��java.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M)  ��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) ��nestedexceptionisjava.sql.SQLIntegrityConstraintViolationException��ORA-00001��Υ��ΨһԼ������(MIDR.OPERATION_UNIQUE_M) 
*/


/*
--1.��ʼ��
UPDATE t_setlinfo
SET isdrg = 0
WHERE CONVERT(DATE, brjsrq, 23)
BETWEEN '2025-04-01' AND '2025-04-30';

--2.ִ�ж����ű�
UPDATE a
SET a.isdrg = 1,
    a.hi_type = b.insuranceid
FROM t_setlinfo a,
(
    SELECT DISTINCT
           zylsh,
           insuranceid
    FROM t_job_settlebillinglist
    WHERE CONVERT(DATE, datebill, 23)
          BETWEEN '2025-04-01' AND '2025-04-30'
          AND medicalhosid = 1
) b
WHERE a.mdtrt_sn = b.zylsh;

--3.�˶Խ��
SELECT DISTINCT
       mdtrt_sn
FROM t_setlinfo a
WHERE CONVERT(DATE, brjsrq, 23)
      BETWEEN '2025-04-01' AND '2025-04-30'
      AND isdrg = 1;
*/


select  mdtrt_sn,bill_code,bill_no from t_setlinfo where  mdtrt_sn='999177-4-001'
-- update t_setlinfo set bill_code='1001126069',bill_no='1001126069' where  mdtrt_sn='999177-4-001'
select  mdtrt_sn,bill_code,bill_no from t_setlinfo where  mdtrt_sn='250035549-1-001'
-- update t_setlinfo set bill_code='1001125623',bill_no='1001125623' where  mdtrt_sn='250035549-1-001'




/*
173350	2022974098-7-001	diseinfo	[{"diag_type":"1","diag_code":"K92.210","diag_name":"��������Ѫ","adm_cond_type":"1","maindiag_flag":"1","tcm_dise_flag":"0","Sort":1},{"diag_type":"2","diag_code":"K74.617+I98.3*","diag_name":"��Ӳ����ʳ��θ�׾����������ѳ�Ѫ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":2},{"diag_type":"2","diag_code":"D64.903","diag_name":"�ض�ƶѪ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":3},{"diag_type":"2","diag_code":"K74.602","diag_name":"���͸��׺��Ӳ��ʧ������","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":4},{"diag_type":"2","diag_code":"E77.801","diag_name":"�͵���Ѫ֢","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":5},{"diag_type":"2","diag_code":"K72.900x003+G94.3*","diag_name":"�����Բ�","adm_cond_type":"2","maindiag_flag":"0","tcm_dise_flag":"0","Sort":6},{"diag_type":"2","diag_code":"K65.902","diag_name":"�Է��Ը�Ĥ��","adm_cond_type":"2","maindiag_flag":"0","tcm_dise_flag":"0","Sort":7},{"diag_type":"2","diag_code":"E87.600","diag_name":"�ͼ�Ѫ֢","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":8}]
 1 Setlinfo_DiseinfoDto	diseinfo	[{"diag_type":"1","diag_code":"K92.210","diag_name":"��������Ѫ","adm_cond_type":"1","maindiag_flag":"1","tcm_dise_flag":"0","Sort":1},{"diag_type":"2","diag_code":"K74.617+I98.3*","diag_name":"��Ӳ����ʳ��θ�׾����������ѳ�Ѫ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":2},{"diag_type":"2","diag_code":"D64.903","diag_name":"�ض�ƶѪ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":3},{"diag_type":"2","diag_code":"K74.602","diag_name":"���͸��׺��Ӳ��ʧ������","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":4},{"diag_type":"2","diag_code":"E77.801","diag_name":"�͵���Ѫ֢","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":5},{"diag_type":"2","diag_code":"R18.x00","diag_name":"��ˮ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":6},{"diag_type":"2","diag_code":"D73.200","diag_name":"���Գ�Ѫ��Ƣ��","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":7},{"diag_type":"2","diag_code":"K72.900x003+G94.3*","diag_name":"�����Բ�","adm_cond_type":"2","maindiag_flag":"0","tcm_dise_flag":"0","Sort":8},{"diag_type":"2","diag_code":"K65.902","diag_name":"�Է��Ը�Ĥ��","adm_cond_type":"2","maindiag_flag":"0","tcm_dise_flag":"0","Sort":9},{"diag_type":"2","diag_code":"E87.600","diag_name":"�ͼ�Ѫ֢","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":14},{"diag_type":"2","diag_code":"R63.801","diag_name":"Ӫ������","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":15}]	2025-05-12 16:07:21.4833333	DDEEFAB1-5E56-1C53-D217-3A066BD86FA8	2025-05-12 16:07:21.4833333	DDEEFAB1-5E56-1C53-D217-3A066BD86FA8
173351	2022974098-7-001	diseinfo	[{"diag_type":"1","diag_code":"K92.210","diag_name":"��������Ѫ","adm_cond_type":"1","maindiag_flag":"1","tcm_dise_flag":"0","Sort":1},{"diag_type":"2","diag_code":"K74.617+I98.3*","diag_name":"��Ӳ����ʳ��θ�׾����������ѳ�Ѫ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":2},{"diag_type":"2","diag_code":"D64.903","diag_name":"�ض�ƶѪ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":3},{"diag_type":"2","diag_code":"K74.602","diag_name":"���͸��׺��Ӳ��ʧ������","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":4},{"diag_type":"2","diag_code":"E77.801","diag_name":"�͵���Ѫ֢","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":5},{"diag_type":"2","diag_code":"K72.900x003+G94.3*","diag_name":"�����Բ�","adm_cond_type":"2","maindiag_flag":"0","tcm_dise_flag":"0","Sort":6},{"diag_type":"2","diag_code":"K65.902","diag_name":"�Է��Ը�Ĥ��","adm_cond_type":"2","maindiag_flag":"0","tcm_dise_flag":"0","Sort":7},{"diag_type":"2","diag_code":"E87.600","diag_name":"�ͼ�Ѫ֢","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":8}]
 1 Setlinfo_DiseinfoDto	diseinfo	[{"diag_type":"1","diag_code":"K92.210","diag_name":"��������Ѫ","adm_cond_type":"1","maindiag_flag":"1","tcm_dise_flag":"0","Sort":1},{"diag_type":"2","diag_code":"K74.617+I98.3*","diag_name":"��Ӳ����ʳ��θ�׾����������ѳ�Ѫ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":2},{"diag_type":"2","diag_code":"D64.903","diag_name":"�ض�ƶѪ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":3},{"diag_type":"2","diag_code":"K74.602","diag_name":"���͸��׺��Ӳ��ʧ������","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":4},{"diag_type":"2","diag_code":"E77.801","diag_name":"�͵���Ѫ֢","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":5},{"diag_type":"2","diag_code":"R18.x00","diag_name":"��ˮ","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":6},{"diag_type":"2","diag_code":"D73.200","diag_name":"���Գ�Ѫ��Ƣ��","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":7},{"diag_type":"2","diag_code":"K72.900x003+G94.3*","diag_name":"�����Բ�","adm_cond_type":"2","maindiag_flag":"0","tcm_dise_flag":"0","Sort":8},{"diag_type":"2","diag_code":"K65.902","diag_name":"�Է��Ը�Ĥ��","adm_cond_type":"2","maindiag_flag":"0","tcm_dise_flag":"0","Sort":9},{"diag_type":"2","diag_code":"E87.600","diag_name":"�ͼ�Ѫ֢","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":14},{"diag_type":"2","diag_code":"R63.801","diag_name":"Ӫ������","adm_cond_type":"1","maindiag_flag":"0","tcm_dise_flag":"0","Sort":15}]	2025-05-12 16:07:21.4833333	DDEEFAB1-5E56-1C53-D217-3A066BD86FA8	2025-05-12 16:07:21.4833333	DDEEFAB1-5E56-1C53-D217-3A066BD86FA8
�򹤣�����ˣ��޸���һ���޶���¼���ֶΡ��Ƿ���Ч��Ϊ0����֪��Ϊɶͬһ���޶���¼��revise����������������ID������������һģһ���ļ�¼.*/