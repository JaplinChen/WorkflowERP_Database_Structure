--ADMNB_伺服器資料對應檔
SELECT
  ,NB001 AS "整合代號"
  ,NB002 AS "公司代號"
  ,NB003 AS "序號"
  ,NB004 AS "單身序號"
  ,NB005 AS "檔案代號"
  ,CASE 
   WHEN '1' THEN N'生產線別'
   WHEN '2' THEN N'加工廠商'
   WHEN '3' THEN N'庫別'
   ELSE ""
   END AS "類別"
  ,NB007 AS "資料代號"

FROM ADMNB
