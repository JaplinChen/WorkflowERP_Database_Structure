--FCSTF_資料匯出入欄位設定單身檔
SELECT
  ,TF001 AS "檔案代號"
  ,CASE 
   WHEN '1' THEN N'匯入'
   WHEN '2' THEN N'匯出'
   ELSE ""
   END AS "類型"
  ,TF003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'欄位資料,'
   WHEN '2' THEN N'固定資料'
   ELSE ""
   END AS "來源"
  ,TF005 AS "欄位代號"
  ,TF006 AS "EXCEL欄位"
  ,CASE 
   WHEN 'C' THEN N'Char'
   WHEN 'N' THEN N'Numeric'
   WHEN 'V' THEN N'Varchar'
   WHEN 'D' THEN N'Datetime'
   ELSE ""
   END AS "欄位型態"
  ,TF008 AS "固定數值"
  ,TF009 AS "固定文字"
  ,TF010 AS "資料轉換"
  ,TF011 AS "備註"
  ,TF012 AS "公司代號"

FROM FCSTF
