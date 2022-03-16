--IDLNE_特殊等級設定單頭檔
SELECT
  ,CASE 
   WHEN '1' THEN N'產品系列'
   WHEN '2' THEN N'Wafer型號'
   ELSE ""
   END AS "類別"
  ,NE002 AS "類別代號"
  ,NE003 AS "備註"

FROM IDLNE
