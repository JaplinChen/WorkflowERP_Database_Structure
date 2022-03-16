--APSML_製令製程每日產出
SELECT
  ,ML001 AS "製令編號"
  ,ML002 AS "加工順序"
  ,ML003 AS "產出日期"
  ,ML004 AS "途程編號"
  ,ML005 AS "製程代號"
  ,ML006 AS "資源代號"
  ,ML007 AS "預估產出數量"
  ,ML008 AS "廠別"
  ,ML009 AS "計劃批號"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"

FROM APSML
