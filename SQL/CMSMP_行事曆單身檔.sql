--CMSMP_行事曆單身檔
SELECT
  ,CASE 
   WHEN '1' THEN N'工廠'
   WHEN '2' THEN N'銀行'
   WHEN '3' THEN N'刷卡班別'
   ELSE ""
   END AS "行業別"
  ,MP002 AS "年份"
  ,MP003 AS "班別"
  ,MP004 AS "日期"
  ,CASE 
   WHEN '1' THEN N'全天/休息日'
   WHEN '2' THEN N'半天'
   WHEN '3' THEN N'節日'
   ELSE ""
   END AS "休假方式"
  ,MP006 AS "休假天數"
  ,MP007 AS "備註"

FROM CMSMP
