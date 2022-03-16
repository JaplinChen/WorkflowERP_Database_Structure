--ADMNC_程式關連檔
SELECT
  ,NC001 AS "ERP作業代號"
  ,NC002 AS "整合代號"
  ,NC003 AS "整合程式代號"
  ,NC004 AS "整合程式名稱"
  ,NC005 AS "參數說明"
  ,CASE 
   WHEN '1' THEN N'同廠商+同日期產生一張進貨單,'
   WHEN '2' THEN N'一張採購單產生一張進貨單'
   WHEN '3' THEN N'同廠商產生一張進貨單'
   ELSE ""
   END AS "參數值1"
  ,NC007 AS "備註"

FROM ADMNC
