--CMSMI_行事曆單頭檔
SELECT
  ,CASE 
   WHEN '1' THEN N'工廠'
   WHEN '2' THEN N'銀行'
   WHEN '3' THEN N'刷卡班別'
   ELSE ""
   END AS "行業別"
  ,MI002 AS "年份"
  ,MI003 AS "班別"
  ,MI004 AS "備註"

FROM CMSMI
