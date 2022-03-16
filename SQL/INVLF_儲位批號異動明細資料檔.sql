--INVLF_儲位批號異動明細資料檔
SELECT
  ,LF001 AS "異動單別"
  ,LF002 AS "異動單號"
  ,LF003 AS "異動序號"
  ,LF004 AS "品號"
  ,LF005 AS "庫別"
  ,LF006 AS "儲位"
  ,LF007 AS "批號"
  ,LF008 AS "I/O別"
  ,LF009 AS "異動日期"
  ,CASE 
   WHEN '1' THEN N'入庫'
   WHEN '2' THEN N'銷貨'
   WHEN '3' THEN N'領用'
   WHEN '4' THEN N'轉撥'
   WHEN '5' THEN N'調整'
   ELSE ""
   END AS "異動別"
  ,LF011 AS "數量"
  ,LF012 AS "包裝數量"
  ,LF013 AS "備註"
  ,LF019 AS "DATECODE"

FROM INVLF
