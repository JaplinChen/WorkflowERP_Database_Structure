--ACTTU_股東權益變動表各期餘額檔
SELECT
  ,TU001 AS "會計年度"
  ,TU002 AS "期別"
  ,CASE 
   WHEN '1' THEN N'股東權益期初餘額'
   WHEN '2' THEN N'股東權益項目歸屬檔'
   WHEN '3' THEN N'股東權益各期餘額'
   ELSE ""
   END AS "用途"
  ,TU004 AS "分類代號"
  ,TU005 AS "項目代號"
  ,TU006 AS "金額"
  ,TU007 AS "備註"
  ,TU008 AS "帳別代號"
  ,TU011 AS "會計制度"

FROM ACTTU
