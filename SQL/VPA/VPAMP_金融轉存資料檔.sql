--VPAMP_金融轉存資料檔
SELECT
  ,MP001 AS "薪資轉存銀行"
  ,MP002 AS "薪資轉存銀行名稱"
  ,CASE 
   WHEN 'B' THEN N'銀行'
   ELSE ""
   END AS "轉存方式"
  ,MP004 AS "連線局"
  ,MP005 AS "薪資轉存帳號"
  ,MP006 AS "媒體管制號碼"
  ,MP007 AS "備註"

FROM VPAMP
