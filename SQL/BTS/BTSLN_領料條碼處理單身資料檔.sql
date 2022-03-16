--BTSLN_領料條碼處理單身資料檔
SELECT
  ,LN001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'製令領料,'
   WHEN '2' THEN N'製令合併領料表領料,'
   WHEN '3' THEN N'領料單領料'
   ELSE ""
   END AS "作業種類"
  ,LN003 AS "處理序號"
  ,LN004 AS "單別"
  ,LN005 AS "單號"
  ,LN006 AS "序號"
  ,LN007 AS "品號"
  ,LN008 AS "庫別"
  ,LN009 AS "儲位"
  ,LN010 AS "批號"
  ,LN011 AS "數量"
  ,LN012 AS "處理時間"
  ,LN013 AS "合併領料單號"
  ,LN014 AS "序號"
  ,LN020 AS "製程代號"
  ,LN021 AS "類型"
  ,LN022 AS "被取替代品號"
  ,LN023 AS "被取替代製程"

FROM BTSLN
