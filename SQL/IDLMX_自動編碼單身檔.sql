--IDLMX_自動編碼單身檔
SELECT
  ,CASE 
   WHEN '0' THEN N'Body Type'
   WHEN '1' THEN N'CodeN'
   WHEN 'o' THEN N''
   WHEN '2' THEN N'子CodeN'
   WHEN 'o' THEN N''
   WHEN '3' THEN N'CodeN'
   WHEN 'o' THEN N' Type'
   WHEN '4' THEN N'Body Mask'
   WHEN '5' THEN N'Code Mask'
   WHEN '6' THEN N'光罩群組'
   ELSE ""
   END AS "類型"
  ,MX002 AS "序號"
  ,CASE 
   WHEN '1' THEN N'檔案'
   WHEN '2' THEN N'固定文字'
   ELSE ""
   END AS "資料來源"
  ,MX004 AS "檔案代號"
  ,MX005 AS "欄位代號"
  ,MX006 AS "固定文字"
  ,CASE 
   WHEN '1' THEN N'不補空白'
   WHEN '2' THEN N'右補空白'
   ELSE ""
   END AS "填空方式"
  ,MX008 AS "長度"

FROM IDLMX
