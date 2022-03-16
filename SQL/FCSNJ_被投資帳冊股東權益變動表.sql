--FCSNJ_被投資帳冊股東權益變動表
SELECT
  ,NJ001 AS "會計年度"
  ,NJ002 AS "期別"
  ,CASE 
   WHEN '1' THEN N'股東權益期初餘額'
   WHEN '2' THEN N'股東權益項目歸屬檔'
   WHEN '3' THEN N'股東權益各期餘額'
   ELSE ""
   END AS "用途"
  ,NJ004 AS "分類代號"
  ,NJ005 AS "餘額"
  ,NJ006 AS "備註"
  ,NJ007 AS "帳別代號"
  ,NJ010 AS "會計制度"
  ,NJ013 AS "公司代號"

FROM FCSNJ
