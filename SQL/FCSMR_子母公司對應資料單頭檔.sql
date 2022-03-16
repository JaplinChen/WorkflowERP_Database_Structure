--FCSMR_子母公司對應資料單頭檔
SELECT
  ,MR001 AS "子公司代號"
  ,CASE 
   WHEN '1' THEN N'合併股東權益變動表'
   WHEN '2' THEN N'營運分類(商品分類)'
   WHEN '3' THEN N'營運分類(自訂)'
   WHEN '4' THEN N'營運分類(部門群組)'
   WHEN '5' THEN N'子母關係交易科目'
   ELSE ""
   END AS "對應類型"
  ,MR005 AS "會計制度"
  ,MR007 AS "母公司代號"

FROM FCSMR
