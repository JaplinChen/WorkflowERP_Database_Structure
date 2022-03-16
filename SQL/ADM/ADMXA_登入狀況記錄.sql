--ADMXA_登入狀況記錄
SELECT
  ,XA001 AS "日期"
  ,XA002 AS "電腦名稱"
  ,XA003 AS "帳號"
  ,XA004 AS "時間"
  ,CASE 
   WHEN '1' THEN N'密碼錯誤'
   WHEN '2' THEN N'密碼連續錯3次'
   ELSE ""
   END AS "登入狀態"
  ,XA006 AS "備註"
  ,XA007 AS "次數"

FROM ADMXA
