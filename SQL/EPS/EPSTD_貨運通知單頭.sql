--EPSTD_貨運通知單頭
SELECT
  ,TD001 AS "S/INO單別"
  ,TD002 AS "S/INO單號"
  ,TD003 AS "廠別"
  ,TD004 AS "運貨日期"
  ,TD005 AS "運輸公司"
  ,TD006 AS "船名"
  ,TD007 AS "SIZE"
  ,TD008 AS "航次"
  ,TD009 AS "業務人員"
  ,TD010 AS "總重"
  ,TD011 AS "材積"
  ,TD012 AS "件數"
  ,TD013 AS "確認碼"
  ,TD014 AS "備註"
  ,TD015 AS "列印次數"
  ,TD016 AS "單據日期"
  ,TD017 AS "確認者"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態碼"
  ,TD019 AS "貨櫃場"
  ,TD020 AS "傳送次數"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"

FROM EPSTD
