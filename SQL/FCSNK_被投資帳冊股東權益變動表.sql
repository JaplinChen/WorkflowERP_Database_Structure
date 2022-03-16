--FCSNK_被投資帳冊股東權益變動表
SELECT
  ,NK001 AS "會計年度"
  ,NK002 AS "期別"
  ,CASE 
   WHEN '1' THEN N'股東權益期初餘額'
   WHEN '2' THEN N'股東權益項目歸屬檔'
   WHEN '3' THEN N'股東權益各期餘額'
   ELSE ""
   END AS "用途"
  ,NK004 AS "分類代號"
  ,NK005 AS "項目代號"
  ,NK006 AS "金額"
  ,NK007 AS "備註"
  ,NK008 AS "帳別代號"
  ,NK011 AS "會計制度"
  ,NK014 AS "公司代號"

FROM FCSNK
