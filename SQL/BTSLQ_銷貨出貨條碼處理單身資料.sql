--BTSLQ_銷貨出貨條碼處理單身資料
SELECT
  ,LQ001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'訂單轉銷貨,2,出通轉銷貨'
   ELSE ""
   END AS "作業種類"
  ,LQ003 AS "處理序號"
  ,LQ004 AS "單別"
  ,LQ005 AS "單號"
  ,LQ006 AS "序號"
  ,LQ007 AS "品號"
  ,LQ008 AS "庫別"
  ,LQ009 AS "儲位"
  ,LQ010 AS "批號"
  ,LQ011 AS "數量"
  ,LQ012 AS "處理時間"
  ,LQ018 AS "贈備品量"

FROM BTSLQ
