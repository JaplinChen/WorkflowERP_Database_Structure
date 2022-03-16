--BOMMN_E-BOM轉BOM對照單身檔
SELECT
  ,MN001 AS "工程主件品號"
  ,MN002 AS "序號"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,MN004 AS "元件品號"
  ,MN005 AS "正式元件品號"
  ,MN006 AS "生效日期"
  ,MN007 AS "失效日期"
  ,CASE 
   WHEN '0' THEN N'不需更新/'
   WHEN '1' THEN N'未更新/'
   WHEN '2' THEN N'已更新'
   ELSE ""
   END AS "品號更新碼"
  ,MN014 AS "屬性組代碼"
  ,MN015 AS "屬性代碼一"
  ,MN016 AS "屬性代碼二"
  ,MN017 AS "屬性代碼三"
  ,MN018 AS "屬性代碼四"
  ,MN019 AS "屬性代碼五"
  ,MN020 AS "屬性代碼六"
  ,MN021 AS "屬性代碼七"
  ,MN022 AS "屬性代碼八"
  ,MN023 AS "屬性代碼九"
  ,MN024 AS "屬性代碼十"
  ,MN025 AS "屬性內容一"
  ,MN026 AS "屬性內容二"
  ,MN027 AS "屬性內容三"
  ,MN028 AS "屬性內容四"
  ,MN029 AS "屬性內容五"
  ,MN030 AS "屬性內容六"
  ,MN031 AS "屬性內容七"
  ,MN032 AS "屬性內容八"
  ,MN033 AS "屬性內容九"
  ,MN034 AS "屬性內容十"

FROM BOMMN
