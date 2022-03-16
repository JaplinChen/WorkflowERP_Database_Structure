--MTPMF_多角貿易個案欄位對照結構
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
  ,MF002 AS "目的檔案代號"
  ,MF003 AS "目的欄位代號"
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
  ,MF006 AS "來源檔案代號"
  ,MF007 AS "來源欄位代號"
  ,MF008 AS "固定數值"
  ,MF009 AS "固定文字"
  ,MF010 AS "備註"
  ,CASE 
   WHEN '3' THEN N'下游資料下SQL 的來源欄位'
   ELSE ""
   END AS "來源條件欄位"
  ,CASE 
   WHEN '3' THEN N'下游資料下SQL 的來源傳入欄位值的識別'
   ELSE ""
   END AS "傳入條件欄位"

FROM MTPMF
