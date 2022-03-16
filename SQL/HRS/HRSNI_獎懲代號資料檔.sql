--HRSNI_獎懲代號資料檔
SELECT
  ,NI001 AS "獎懲代號"
  ,NI002 AS "獎懲名稱"
  ,CASE 
   WHEN '1' THEN N'獎'
   WHEN '-1' THEN N'懲'
   ELSE ""
   END AS "獎懲別"
  ,NI004 AS "獎懲說明"
  ,NI005 AS "單位"

FROM HRSNI
