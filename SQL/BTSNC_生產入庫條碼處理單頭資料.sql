--BTSNC_生產入庫條碼處理單頭資料
SELECT
  ,NC001 AS "工作ID"
  ,NC002 AS "作業種類"
  ,NC003 AS "處理狀態"
  ,NC004 AS "工作日期"
  ,NC005 AS "使用者代號"
  ,NC008 AS "異常碼"

FROM BTSNC
