--ACTMU_銷貨-製造成本表設定單身
SELECT
  ,MU001 AS "隱藏欄位"
  ,CASE 
   WHEN '1' THEN N'成品'
   WHEN '2' THEN N'原料'
   WHEN '3' THEN N'製成品'
   ELSE ""
   END AS "銷貨成本類別"
  ,MU003 AS "類別代號"

FROM ACTMU
