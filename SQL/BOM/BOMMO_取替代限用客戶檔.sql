--BOMMO_取替代限用客戶檔
SELECT
  ,MO001 AS "元件"
  ,MO002 AS "主件"
  ,CASE 
   WHEN '2' THEN N'取代料件'
   WHEN '3' THEN N'替代料件'
   ELSE ""
   END AS "取替代件"
  ,MO004 AS "客戶"

FROM BOMMO
