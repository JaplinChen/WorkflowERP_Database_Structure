--NOTMG_銀行支票本資料檔
SELECT
  ,MG001 AS "銀行代號"
  ,MG002 AS "使用順序碼"
  ,MG003 AS "起始支票號碼"
  ,MG004 AS "截止支票號碼"
  ,MG005 AS "已用支票號碼"
  ,CASE 
   WHEN '1' THEN N'可用'
   WHEN '2' THEN N'用完'
   WHEN '3' THEN N'停用'
   ELSE ""
   END AS "使用狀態"
  ,MG007 AS "備註"

FROM NOTMG
