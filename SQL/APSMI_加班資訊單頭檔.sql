--APSMI_加班資訊單頭檔
SELECT
  ,MI001 AS "廠別"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"
  ,MI003 AS "資源代號"
  ,MI004 AS "日期"
  ,MI005 AS "備註"

FROM APSMI
