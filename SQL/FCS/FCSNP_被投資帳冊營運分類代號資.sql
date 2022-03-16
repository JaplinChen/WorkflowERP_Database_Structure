--FCSNP_被投資帳冊營運分類代號資
SELECT
  ,NP001 AS "公司代號"
  ,CASE 
   WHEN '2' THEN N'營運分類(商品分類)'
   WHEN '3' THEN N'營運分類(自訂)'
   WHEN '4' THEN N'營運分類(部門群組)'
   ELSE ""
   END AS "對應類型"
  ,NP003 AS "類別代號"
  ,NP004 AS "類別名稱"

FROM FCSNP
