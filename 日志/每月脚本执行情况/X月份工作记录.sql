--�鿴����ִ��״̬
select id,zylsh,createdtime from t_job_settlebillinglist order by createdtime desc
-- select * from  [WEGOBI_DRGS].[dbo].[t_job] where id= '362976B6-3F2D-182B-360B-3A0962538462'
-- update [WEGOBI_DRGS].[dbo].[t_job]   set  jobstatus = '1' where id= '362976B6-3F2D-182B-360B-3A0962538462'

--�ظ���������������oprn_oprt_date�С�������ʱ���롯��ȫһ��ʱ�����ϴ�ʧ��У�鲻ͨ����
-- exec updateOprtDate;

---��ѯ������Ϣ
select a.mdtrt_sn as ��ˮ��,a.brjsrq ����ʱ��,c.err_msg ������Ϣ
from t_setlinfo a
left join t_mihs_result_relation b on a.mdtrt_sn = b.uid
left join t_mihs_result c on b.resultid=c.id 
where c.infocode=-1 
and a.brjsrq>='2025-05-01' and a.brjsrq<'2025-06-01'-- cast(getdate() as date)
and err_msg not like '%ʡƽ̨%'


/* --����
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


---��ѯ������Ϣ-----������
