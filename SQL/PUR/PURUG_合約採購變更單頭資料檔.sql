--PURUG_合約採購變更單頭資料檔
SELECT
  ,UG001 AS "合約變更單別"
  ,UG002 AS "合約變更單號"
  ,UG003 AS "版次"
  ,UG004 AS "變更日期"
  ,UG005 AS "整張結案"
  ,UG006 AS "變更原因"
  ,UG007 AS "供應廠商"
  ,UG008 AS "有效起始日期"
  ,UG009 AS "有效截止日期"
  ,UG010 AS "合約號碼"
  ,UG011 AS "交易幣別"
  ,UG012 AS "匯率"
  ,UG013 AS "價格條件"
  ,UG014 AS "新備註"
  ,UG015 AS "單據日期"
  ,UG016 AS "列印次數"
  ,UG017 AS "確認碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "新課稅別"
  ,UG019 AS "新送貨地址(一)"
  ,UG020 AS "新送貨地址(二)"
  ,UG021 AS "確認者"
  ,UG022 AS "新營業稅率"
  ,UG023 AS "付款條件代號"
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
  ,UG025 AS "傳送次數"
  ,UG026 AS "運輸方式代號"
  ,UG032 AS "稅別碼"
  ,UG033 AS "訂金比率"
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
  ,UG036 AS "製造廠商"
  ,UG037 AS "單身多稅率"
  ,UG038 AS "聯絡人"
  ,UG103 AS "原版次"
  ,UG108 AS "原有效起始日期"
  ,UG109 AS "原有效截止日期"
  ,UG110 AS "原合約號碼"
  ,UG111 AS "原交易幣別"
  ,UG112 AS "原匯率"
  ,UG113 AS "原價格條件"
  ,UG114 AS "原備註"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "原課稅別"
  ,UG119 AS "原送貨地址(一)"
  ,UG120 AS "原送貨地址(二)"
  ,UG122 AS "原營業稅率"
  ,UG123 AS "原付款條件代號"
  ,UG126 AS "原運輸方式代號"
  ,UG132 AS "原稅別碼"
  ,UG133 AS "原訂金比率"
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
   END AS "交易條件"
  ,UG136 AS "製造廠商"
  ,UG137 AS "原單身多稅率"
  ,UG138 AS "原聯絡人"

FROM PURUG
