--IDLTM_WIP資料維護單身檔
SELECT
  ,CASE 
   WHEN '1' THEN N'FAB WIP'
   WHEN '1' THEN N'MASK WIP'
   ELSE ""
   END AS "性質"
  ,TM002 AS "品號"
  ,TM003 AS "批號"
  ,TM004 AS "製造廠商"
  ,TM005 AS "歷史轉入日期"
  ,TM006 AS "歷史轉入時間"
  ,TM007 AS "製程代號"
  ,TM008 AS "數量"
  ,TM009 AS "單位"
  ,TM010 AS "包裝數量"
  ,TM011 AS "包裝單位"
  ,TM012 AS "進貨日期"
  ,TM013 AS "進貨單號"
  ,TM014 AS "製程狀態"
  ,TM020 AS "採購廠商"

FROM IDLTM
