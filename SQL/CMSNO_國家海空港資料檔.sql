--CMSNO_國家海空港資料檔
SELECT
  ,NO001 AS "國家代號"
  ,CASE 
   WHEN 'A' THEN N'空港'
   WHEN 'O' THEN N'海港'
   ELSE ""
   END AS "海空港"
  ,NO003 AS "港口代號"
  ,NO004 AS "港口簡稱"
  ,NO005 AS "港口全名"
  ,NO006 AS "備註"

FROM CMSNO
