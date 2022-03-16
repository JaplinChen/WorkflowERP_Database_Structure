--EBOLA_ERP匯出EC匯入明細檔
SELECT
  ,LA001 AS "TABLE名稱"
  ,LA002 AS "鍵值1"
  ,LA003 AS "鍵值2"
  ,LA004 AS "鍵值3"
  ,LA005 AS "鍵值4"
  ,LA006 AS "鍵值5"
  ,LA007 AS "匯至EC"
  ,CASE 
   WHEN '1' THEN N'EBO'
   WHEN '2' THEN N'ERP'
   ELSE ""
   END AS "來源"

FROM EBOLA
