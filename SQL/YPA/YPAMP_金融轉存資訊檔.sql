--YPAMP_金融轉存資訊檔
SELECT
  ,MP001 AS "薪資轉存局號"
  ,MP002 AS "薪資轉存局名"
  ,CASE 
   WHEN 'B' THEN N'銀行'
   WHEN 'P' THEN N'郵局'
   ELSE ""
   END AS "轉存方式"
  ,MP004 AS "聯機局"
  ,MP005 AS "薪資轉存帳號"
  ,MP006 AS "媒體控制號碼"
  ,MP007 AS "備註"

FROM YPAMP
