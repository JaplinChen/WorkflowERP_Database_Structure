--DSCMG_檔案開窗檢核檔
SELECT
  ,CASE 
   WHEN '1' THEN N'開窗'
   WHEN '2' THEN N'檢核'
   ELSE ""
   END AS "類型"
  ,MG002 AS "檔案編號"
  ,MG003 AS "序號"
  ,MG004 AS "開窗/檢核檔案"
  ,MG005 AS "開窗/檢核組數"
  ,MG006 AS "說明"

FROM DSCMG
