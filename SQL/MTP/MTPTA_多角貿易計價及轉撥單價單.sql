--MTPTA_多角貿易計價及轉撥單價單
SELECT
  ,TA001 AS "流程代號"
  ,TA002 AS "生效日期"
  ,CASE 
   WHEN '1' THEN N'依來源客戶'
   WHEN '2' THEN N'依上游廠商'
   ELSE ""
   END AS "計價基準"
  ,TA004 AS "計價幣別"

FROM MTPTA
