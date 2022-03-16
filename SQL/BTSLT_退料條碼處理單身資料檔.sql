--BTSLT_退料條碼處理單身資料檔
SELECT
  ,LT001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'製令退料,'
   WHEN '2' THEN N'退料單退料'
   ELSE ""
   END AS "作業種類"
  ,LT003 AS "處理序號"
  ,LT004 AS "單別"
  ,LT005 AS "單號"
  ,LT006 AS "序號"
  ,LT007 AS "品號"
  ,LT008 AS "庫別"
  ,LT009 AS "儲位"
  ,LT010 AS "批號"
  ,LT011 AS "數量"
  ,LT012 AS "處理時間"

FROM BTSLT
