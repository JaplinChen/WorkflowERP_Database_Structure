--ADMMZ_資料匯入欄位對照檔
SELECT
  ,MZ001 AS "整合代號"
  ,MZ002 AS "公司代號"
  ,MZ003 AS "序號"
  ,MZ004 AS "檔案代號"
  ,MZ005 AS "欄位代號"
  ,CASE 
   WHEN 'C' THEN N'Char'
   WHEN 'N' THEN N'Numeric'
   WHEN 'V' THEN N'Varchar'
   ELSE ""
   END AS "欄位型態"
  ,CASE 
   WHEN '1' THEN N'來源資料'
   WHEN '2' THEN N'固定值'
   ELSE ""
   END AS "來源"
  ,MZ008 AS "來源欄位代號"
  ,MZ009 AS "固定數值"
  ,MZ010 AS "固定文字"

FROM ADMMZ
