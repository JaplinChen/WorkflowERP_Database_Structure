--BTSLA_採購單條碼處理單頭資料檔
SELECT
  ,LA001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'採購進貨,'
   WHEN '2' THEN N'採購入庫'
   ELSE ""
   END AS "作業種類"
  ,LA003 AS "處理狀態"
  ,LA004 AS "工作日期"
  ,LA005 AS "使用者代號"
  ,LA008 AS "異常碼"
  ,LA011 AS "稅別碼"

FROM BTSLA
