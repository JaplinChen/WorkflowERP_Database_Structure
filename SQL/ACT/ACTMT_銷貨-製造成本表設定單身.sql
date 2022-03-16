--ACTMT_銷貨-製造成本表設定單身
SELECT
  ,MT001 AS "隱藏欄位"
  ,CASE 
   WHEN '1' THEN N'成品'
   WHEN '2' THEN N'原料'
   WHEN '3' THEN N'製成品'
   ELSE ""
   END AS "銷貨成本類別"
  ,CASE 
   WHEN '1' THEN N'進貨'
   WHEN '2' THEN N'退貨'
   ELSE ""
   END AS "進/退貨"
  ,MT004 AS "單別"

FROM ACTMT
