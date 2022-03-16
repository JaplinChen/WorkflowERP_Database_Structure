--COPML_港口資料檔
SELECT
  ,ML001 AS "國家"
  ,ML002 AS "港口簡稱"
  ,ML003 AS "港口全名"
  ,CASE 
   WHEN 'A' THEN N'空港'
   WHEN 'O' THEN N'海港'
   ELSE ""
   END AS "海空港"

FROM COPML
