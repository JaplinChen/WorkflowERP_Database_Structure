--ADMMY_資料匯入通知人員設定檔
SELECT
  ,MY001 AS "整合代號"
  ,MY002 AS "公司代號"
  ,MY003 AS "序號"
  ,MY004 AS "檔案代號"
  ,MY005 AS "子單身序號"
  ,MY006 AS "使用者代號"
  ,CASE 
   WHEN '1' THEN N'MAIL'
   WHEN '2' THEN N''
   WHEN 'B' THEN N''
   WHEN 'B' THEN N'CALL'
   ELSE ""
   END AS "通知方式"
  ,MY008 AS "E-MAIL"

FROM ADMMY
