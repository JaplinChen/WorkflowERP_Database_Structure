--ACTMX_現金流量表項目單身檔
SELECT
  ,MX001 AS "類別"
  ,MX002 AS "現金流量表項目"
  ,MX003 AS "項目名稱"
  ,MX004 AS "備註"
  ,MX010 AS "項目名稱別名"
  ,CASE 
   WHEN '1' THEN N'現時匯率'
   WHEN '2' THEN N'歷史匯率'
   WHEN '3' THEN N'平均匯率'
   ELSE ""
   END AS "再衡量匯率來源"
  ,CASE 
   WHEN '1' THEN N'現時匯率'
   WHEN '2' THEN N'歷史匯率'
   WHEN '3' THEN N'平均匯率'
   ELSE ""
   END AS "換算匯率來源"

FROM ACTMX
