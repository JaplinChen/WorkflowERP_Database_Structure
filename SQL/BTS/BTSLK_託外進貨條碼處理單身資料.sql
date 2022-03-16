--BTSLK_託外進貨條碼處理單身資料
SELECT
  ,LK001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'製令,'
   WHEN '2' THEN N'託外進貨'
   ELSE ""
   END AS "流程選項"
  ,LK003 AS "處理序號"
  ,LK004 AS "製令單別"
  ,LK005 AS "製令單號"
  ,LK006 AS "品號"
  ,LK007 AS "庫別"
  ,LK008 AS "批號"
  ,LK009 AS "單位"
  ,LK010 AS "數量"
  ,LK011 AS "盤點時間"
  ,LK012 AS "儲位"

FROM BTSLK
