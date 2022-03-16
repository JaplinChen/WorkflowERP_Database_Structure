--BOMMB_取替代料件單身檔
SELECT
  ,MB001 AS "元件"
  ,MB002 AS "主件"
  ,CASE 
   WHEN '2' THEN N'取代料件'
   WHEN '3' THEN N'替代料件'
   ELSE ""
   END AS "取替代件"
  ,MB004 AS "品號"
  ,MB005 AS "數量"
  ,MB006 AS "生效日期"
  ,MB007 AS "失效日期"
  ,MB008 AS "備註"
  ,MB009 AS "取替代件順序"

FROM BOMMB
