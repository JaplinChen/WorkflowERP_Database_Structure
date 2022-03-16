--PXMMB_營站品號佣金資料單頭
SELECT
  ,MB001 AS "營站代號"
  ,CASE 
   WHEN '1' THEN N'福利總處'
   WHEN '2' THEN N'全聯社'
   WHEN '3' THEN N'縣市聯社'
   WHEN '4' THEN N'福利總處-副食'
   ELSE ""
   END AS "營站分類方式"
  ,CASE 
   WHEN '1' THEN N'依品號'
   WHEN '2' THEN N'依總金額'
   ELSE ""
   END AS "營站佣金計算方式"
  ,MB004 AS "營站佣金比率%"
  ,MB005 AS "佣金計算含稅"

FROM PXMMB
