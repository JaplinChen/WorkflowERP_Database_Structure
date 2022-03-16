--APSMM_資源負荷檔
SELECT
  ,MM001 AS "資源編號"
  ,MM002 AS "日期"
  ,MM003 AS "工作時間"
  ,MM004 AS "可用時間"
  ,MM005 AS "廠別"
  ,MM006 AS "計劃批號"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"

FROM APSMM
