--FCSTS_合併股東權益變動表期初餘
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
  ,TS007 AS "合併代號"
  ,TS013 AS "調整金額"
  ,TS014 AS "合計"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,TS018 AS "分類名稱"

FROM FCSTS
