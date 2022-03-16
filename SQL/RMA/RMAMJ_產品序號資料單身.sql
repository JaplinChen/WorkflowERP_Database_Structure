--RMAMJ_產品序號資料單身
SELECT
  ,MJ001 AS "品號"
  ,MJ002 AS "產品序號"
  ,MJ003 AS "異動日期"
  ,MJ004 AS "異動單別"
  ,MJ005 AS "異動單號"
  ,MJ006 AS "異動序號"
  ,MJ007 AS "對象代號"
  ,MJ008 AS "對象名稱"
  ,MJ009 AS "I/O別"
  ,CASE 
   WHEN '1' THEN N'入庫'
   WHEN '2' THEN N'銷貨'
   WHEN '3' THEN N'領用'
   WHEN '4' THEN N'轉撥'
   WHEN '5' THEN N'調整'
   WHEN '6' THEN N'維修'
   WHEN '7' THEN N'出貨通知'
   WHEN '8' THEN N'製令'
   WHEN '0' THEN N'期初導入'
   ELSE ""
   END AS "異動別"
  ,MJ011 AS "備註"
  ,MJ012 AS "資料日期"
  ,MJ013 AS "資料時間"
  ,MJ014 AS "庫別"

FROM RMAMJ
