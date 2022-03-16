--MTPME_多角貿易個案欄位對照結構
SELECT
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'訂單變更'
   WHEN '3' THEN N'銷貨'
   WHEN '4' THEN N'結帳'
   WHEN '5' THEN N'銷退'
   WHEN '6' THEN N'採購'
   WHEN '7' THEN N'採購變更'
   WHEN '8' THEN N'退貨'
   ELSE ""
   END AS "拋轉單據"

FROM MTPME
