--MTPMD_多角貿易對照結構單身檔
SELECT
  ,MD001 AS "來源產品別"
  ,MD002 AS "目的產品別"
  ,MD003 AS "來源版號"
  ,MD004 AS "目的版號"
  ,CASE 
   WHEN '1' THEN N'標準'
   WHEN '2' THEN N'客戶自訂'
   ELSE ""
   END AS "區分"
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
  ,MD007 AS "目的檔案代號"
  ,MD008 AS "目的欄位代號"
  ,CASE 
   WHEN 'C' THEN N'Char'
   WHEN 'N' THEN N'Numeric'
   WHEN 'V' THEN N'Varchar'
   ELSE ""
   END AS "目的欄位型態"
  ,CASE 
   WHEN '1' THEN N'來源資料'
   WHEN '2' THEN N'固定值'
   WHEN '3' THEN N'下游資料'
   WHEN '4' THEN N'其他來源'
   ELSE ""
   END AS "來源"
  ,MD011 AS "來源檔案代號"
  ,MD012 AS "來源欄位代號"
  ,MD013 AS "固定數值"
  ,MD014 AS "固定文字"
  ,MD015 AS "備註"
  ,CASE 
   WHEN '3' THEN N'下游資料下SQL 的來源欄位'
   ELSE ""
   END AS "來源條件欄位"
  ,CASE 
   WHEN '3' THEN N'下游資料下SQL 的來源傳入欄位值的識別'
   ELSE ""
   END AS "傳入條件欄位"

FROM MTPMD
