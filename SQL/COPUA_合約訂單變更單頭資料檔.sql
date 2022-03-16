--COPUA_合約訂單變更單頭資料檔
SELECT
  ,UA001 AS "單別"
  ,UA002 AS "單號"
  ,UA003 AS "變更版次"
  ,UA004 AS "變更日期"
  ,UA005 AS "整張結案"
  ,UA006 AS "變更原因"
  ,UA007 AS "單據日期"
  ,UA008 AS "客戶代號"
  ,UA009 AS "有效起始日期"
  ,UA010 AS "有效截止日期"
  ,UA011 AS "合約號碼"
  ,UA012 AS "新部門代號"
  ,UA013 AS "新業務人員"
  ,UA014 AS "新出貨廠別"
  ,UA015 AS "新交易幣別"
  ,UA016 AS "新匯率"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,UA018 AS "新營業稅率"
  ,UA019 AS "新價格條件"
  ,UA021 AS "後置單據可修改單價"
  ,UA022 AS "新客戶單號"
  ,UA023 AS "新備註"
  ,UA024 AS "新連絡人"
  ,UA025 AS "新客戶全名"
  ,UA026 AS "新發票地址(一)"
  ,UA027 AS "新發票地址(二)"
  ,UA028 AS "新送貨客戶全名"
  ,UA029 AS "新送貨地址(一)"
  ,UA030 AS "新送貨地址(二)"
  ,UA031 AS "新TEL_NO"
  ,UA032 AS "新FAX_NO"
  ,CASE 
   WHEN '1' THEN N'依數量'
   WHEN '2' THEN N'依金額'
   ELSE ""
   END AS "結案認定"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "交易條件"
  ,UA035 AS "新付款條件"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,UA038 AS "確認者"
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
  ,UA040 AS "列印次數"
  ,UA041 AS "傳送次數"
  ,UA047 AS "稅別碼"
  ,UA048 AS "單身多稅率"
  ,UA103 AS "原版次"
  ,UA108 AS "原客戶代號"
  ,UA109 AS "原有效起始日期"
  ,UA110 AS "原有效截止日期"
  ,UA111 AS "原合約號碼"
  ,UA112 AS "原部門代號"
  ,UA113 AS "原業務人員"
  ,UA114 AS "原出貨廠別"
  ,UA115 AS "原交易幣別"
  ,UA116 AS "原匯率"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,UA118 AS "原營業稅率"
  ,UA119 AS "原價格條件"
  ,UA121 AS "置單據可修改單價"
  ,UA122 AS "原客戶單號"
  ,UA123 AS "原備註"
  ,UA124 AS "原連絡人"
  ,UA125 AS "原客戶全名"
  ,UA126 AS "原發票地址(一)"
  ,UA127 AS "原發票地址(二)"
  ,UA128 AS "原送貨客戶全名"
  ,UA129 AS "原送貨地址(一)"
  ,UA130 AS "原送貨地址(二)"
  ,UA131 AS "原TEL_NO"
  ,UA132 AS "原FAX_NO"
  ,CASE 
   WHEN '1' THEN N'依數量'
   WHEN '2' THEN N'依金額'
   ELSE ""
   END AS "原結案認定"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "原交易條件"
  ,UA135 AS "原付款條件"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "原材積單位"
  ,UA147 AS "原稅別碼"
  ,UA148 AS "原單身多稅率"

FROM COPUA
