--IDLNF_特殊等級設定單身檔
SELECT
  ,CASE 
   WHEN '1' THEN N'產品系列'
   WHEN '2' THEN N'Wafer型號'
   ELSE ""
   END AS "類別"
  ,NF002 AS "類別代號"
  ,NF003 AS "等級代號"
  ,CASE 
   WHEN '1' THEN N'良品'
   WHEN '2' THEN N'不良品'
   WHEN '3' THEN N'廢品'
   ELSE ""
   END AS "性質"
  ,NF005 AS "備註"

FROM IDLNF
