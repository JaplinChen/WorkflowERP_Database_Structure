--ACTTS_股東權益變動表期初餘額檔
SELECT
  ,TS001 AS "會計年度"
  ,TS002 AS "期別"
  ,CASE 
   WHEN '1' THEN N'股東權益期初餘額'
   WHEN '2' THEN N'股東權益項目歸屬檔'
   WHEN '3' THEN N'股東權益各期餘額'
   ELSE ""
   END AS "用途"
  ,TS004 AS "分類代號"
  ,TS005 AS "餘額"
  ,TS006 AS "備註"
  ,TS007 AS "帳別代號"
  ,TS010 AS "會計制度"

FROM ACTTS
