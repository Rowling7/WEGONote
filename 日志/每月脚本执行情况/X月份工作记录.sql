--查看任务执行状态
select id,zylsh,createdtime from t_job_settlebillinglist order by createdtime desc
-- select * from  [WEGOBI_DRGS].[dbo].[t_job] where id= '362976B6-3F2D-182B-360B-3A0962538462'
-- update [WEGOBI_DRGS].[dbo].[t_job]   set  jobstatus = '1' where id= '362976B6-3F2D-182B-360B-3A0962538462'

--重复手术的手术日期oprn_oprt_date中‘年月日时分秒’完全一致时，会上传失败校验不通过，
-- exec updateOprtDate;

---查询错误信息
select a.mdtrt_sn as 流水号,a.brjsrq 结算时间,c.err_msg 错误信息
from t_setlinfo a
left join t_mihs_result_relation b on a.mdtrt_sn = b.uid
left join t_mihs_result c on b.resultid=c.id 
where c.infocode=-1 
and a.brjsrq>='2025-05-01' and a.brjsrq<'2025-06-01'-- cast(getdate() as date)
and err_msg not like '%省平台%'


/* --对数
--1.初始化
UPDATE t_setlinfo
SET isdrg = 0
WHERE CONVERT(DATE, brjsrq, 23)
BETWEEN '2025-04-01' AND '2025-04-30';

--2.执行对数脚本
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

--3.核对结果
SELECT DISTINCT
       mdtrt_sn
FROM t_setlinfo a
WHERE CONVERT(DATE, brjsrq, 23)
      BETWEEN '2025-04-01' AND '2025-04-30'
      AND isdrg = 1;
*/


---查询错误信息-----错误结果
