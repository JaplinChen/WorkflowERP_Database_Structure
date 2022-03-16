--BTSLP_銷貨出貨條碼處理單頭資料
SELECT
  ,LP001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'訂單轉銷貨'
   ELSE ""
   END AS "作業種類"
  ,LP003 AS "處理狀態"
  ,LP004 AS "工作日期"
  ,LP005 AS "使用者代號"
  ,LP006 AS "單據日期"
  ,LP009 AS "異常碼"
  ,LP012 AS "稅別碼"

FROM BTSLP
