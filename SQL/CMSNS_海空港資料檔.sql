--CMSNS_海空港資料檔
SELECT
  ,NS001 AS "港口代號"
  ,NS002 AS "港口簡稱"
  ,NS003 AS "港口全名"
  ,NS004 AS "國家別"
  ,CASE 
   WHEN '1' THEN N'空港'
   WHEN '2' THEN N'海港'
   ELSE ""
   END AS "海空港"
  ,NS006 AS "備註"

FROM CMSNS
