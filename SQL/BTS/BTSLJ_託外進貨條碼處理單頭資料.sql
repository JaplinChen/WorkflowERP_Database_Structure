--BTSLJ_託外進貨條碼處理單頭資料
SELECT
  ,LJ001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'製令,'
   WHEN '2' THEN N'託外進貨'
   ELSE ""
   END AS "流程選項"
  ,LJ003 AS "處理狀態"
  ,LJ004 AS "工作日期"
  ,LJ005 AS "使用者代號"
  ,LJ006 AS "單據日期"
  ,LJ009 AS "異常碼"
  ,LJ012 AS "稅別碼"

FROM BTSLJ
