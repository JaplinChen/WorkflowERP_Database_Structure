--BTSLO_退料條碼處理單頭資料檔
SELECT
  ,LO001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'製令退料,'
   WHEN '2' THEN N'退料單退料'
   ELSE ""
   END AS "作業種類"
  ,LO003 AS "處理狀態"
  ,LO004 AS "工作日期"
  ,LO005 AS "使用者代號"
  ,LO008 AS "異常碼"

FROM BTSLO
