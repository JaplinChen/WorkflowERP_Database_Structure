--CMSMS_註記簽核檔
SELECT
  ,CASE 
   WHEN '1' THEN N'註記'
   WHEN '2' THEN N'簽核'
   ELSE ""
   END AS "註記/簽核分類"
  ,MS002 AS "代號"
  ,MS003 AS "簡稱"
  ,MS004 AS "註記/簽核一"
  ,MS005 AS "註記/簽核二"
  ,MS006 AS "註記/簽核三"

FROM CMSMS
