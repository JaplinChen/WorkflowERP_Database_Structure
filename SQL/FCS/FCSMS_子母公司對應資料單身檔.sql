--FCSMS_子母公司對應資料單身檔
SELECT
  ,MS001 AS "子公司代號"
  ,CASE 
   WHEN '1' THEN N'合併股東權益變動表'
   WHEN '2' THEN N'營運分類(商品分類)'
   WHEN '3' THEN N'營運分類(自訂)'
   WHEN '4' THEN N'營運分類(部門群組)'
   WHEN '5' THEN N'子母關係交易科目'
   ELSE ""
   END AS "對應類型"
  ,MS003 AS "來源欄位一"
  ,MS004 AS "來源欄位一名稱"
  ,MS005 AS "來源欄位二"
  ,MS006 AS "來源欄位二名稱"
  ,MS007 AS "對應欄位一"
  ,MS008 AS "對應欄位二"
  ,MS009 AS "對應欄位二名稱"
  ,MS012 AS "會計制度"
  ,MS014 AS "母公司代號"
  ,CASE 
   WHEN '1' THEN N'現時匯率'
   WHEN '2' THEN N'歷史匯率'
   WHEN '3' THEN N'平均匯率'
   ELSE ""
   END AS "再衡量匯率來源"
  ,CASE 
   WHEN '1' THEN N'現時匯率'
   WHEN '2' THEN N'歷史匯率'
   WHEN '3' THEN N'平均匯率'
   ELSE ""
   END AS "換算匯率來源"
  ,MS017 AS "群組"

FROM FCSMS
