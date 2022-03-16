--BOMMA_取替代料件單頭檔
SELECT
  ,MA001 AS "元件"
  ,MA002 AS "主件"
  ,CASE 
   WHEN '2' THEN N'取代料件'
   WHEN '3' THEN N'替代料件'
   ELSE ""
   END AS "取替代件"
  ,MA004 AS "備註"
  ,CASE 
   WHEN '1' THEN N'PLM'
   ELSE ""
   END AS "來源"

FROM BOMMA
