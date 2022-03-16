--CMSNP_計價單位資料檔
SELECT
  ,CASE 
   WHEN '1' THEN N'體積'
   WHEN '2' THEN N'重量'
   ELSE ""
   END AS "單位類別"
  ,NP002 AS "單位代號"
  ,NP003 AS "單位名稱"

FROM CMSNP
