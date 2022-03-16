--APSZJ_資源群組暫存檔
SELECT
  ,ZJ001 AS "廠別代號"
  ,ZJ002 AS "群組編號"
  ,ZJ003 AS "資源代號"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"

FROM APSZJ
