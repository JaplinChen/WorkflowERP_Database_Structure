--BTSLB_採購單條碼處理單身資料檔
SELECT
  ,LB001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'採購進貨,'
   WHEN '2' THEN N'採購入庫'
   ELSE ""
   END AS "作業種類"
  ,LB003 AS "處理序號"
  ,LB004 AS "採購單別"
  ,LB005 AS "採購單號"
  ,LB006 AS "序號"
  ,LB007 AS "品號"
  ,LB008 AS "庫別"
  ,LB009 AS "批號"
  ,LB010 AS "單位"
  ,LB011 AS "數量"
  ,LB012 AS "處理時間"
  ,LB013 AS "報關贖單單別"
  ,LB014 AS "報關贖單單號"
  ,LB015 AS "儲位"

FROM BTSLB
