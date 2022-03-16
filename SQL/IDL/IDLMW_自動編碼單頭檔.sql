--IDLMW_自動編碼單頭檔
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
  ,MW007 AS "備註"

FROM IDLMW
