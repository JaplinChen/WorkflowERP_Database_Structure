--PSMTD_產品序號資料檔
SELECT
  ,TD001 AS "品號"
  ,TD002 AS "產品序號"
  ,TD003 AS "異動日期"
  ,TD004 AS "異動單別"
  ,TD005 AS "異動單號"
  ,TD006 AS "異動序號"
  ,TD007 AS "對象代號"
  ,TD008 AS "對象名稱"
  ,TD009 AS "I/O別"
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
  ,TD011 AS "備註"
  ,TD012 AS "資料日期"
  ,TD013 AS "資料時間"
  ,TD014 AS "庫別"

FROM PSMTD
