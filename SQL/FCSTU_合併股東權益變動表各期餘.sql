--FCSTU_合併股東權益變動表各期餘
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
  ,TU008 AS "合併代號"
  ,TU014 AS "調整金額"
  ,TU015 AS "合計"
  ,TU016 AS "分類名稱"
  ,TU017 AS "項目名稱"

FROM FCSTU
