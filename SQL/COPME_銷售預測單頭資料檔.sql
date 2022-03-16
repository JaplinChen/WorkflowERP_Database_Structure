--COPME_銷售預測單頭資料檔
SELECT
  ,ME001 AS "預測代號"
  ,ME002 AS "客戶"
  ,ME003 AS "通路"
  ,ME004 AS "地區"
  ,ME005 AS "國家"
  ,ME006 AS "部門"
  ,ME007 AS "業務員"
  ,ME008 AS "納入生產計劃"
  ,ME009 AS "備註"
  ,ME010 AS "型態"
  ,ME011 AS "路線"
  ,ME012 AS "其他"
  ,ME013 AS "廠別"
  ,CASE 
   WHEN '1' THEN N'依品號'
   WHEN '2' THEN N'依類別'
   ELSE ""
   END AS "依據"

FROM COPME
