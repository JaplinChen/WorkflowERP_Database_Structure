--ASTTQ_資產採購變更單頭資料檔
SELECT
  ,TQ001 AS "採購變更單別"
  ,TQ002 AS "採購變更單號"
  ,TQ003 AS "版次"
  ,TQ004 AS "變更日期"
  ,TQ005 AS "變更原因"
  ,TQ006 AS "供應廠商"
  ,TQ007 AS "交易幣別"
  ,TQ008 AS "匯率"
  ,TQ009 AS "價格條件"
  ,TQ010 AS "付款條件"
  ,TQ011 AS "新廠別"
  ,TQ012 AS "新採購人員"
  ,TQ013 AS "新送貨地址(一)"
  ,TQ014 AS "新送貨地址(二)"
  ,TQ015 AS "新訂金比率"
  ,TQ016 AS "新營業稅率"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "新課稅別"
  ,CASE 
   WHEN '1' THEN N'中文'
   WHEN '2' THEN N'英文'
   ELSE ""
   END AS "列印格式"
  ,TQ019 AS "單據日期"
  ,TQ020 AS "整張結案"
  ,TQ021 AS "確認者"
  ,TQ022 AS "確認碼"
  ,TQ023 AS "列印次數"
  ,TQ024 AS "傳送次數"
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
  ,TQ026 AS "新備註"
  ,TQ032 AS "稅別碼"
  ,TQ103 AS "原版次"
  ,TQ106 AS "原供應廠商"
  ,TQ107 AS "原交易幣別"
  ,TQ108 AS "原匯率"
  ,TQ109 AS "原價格條件"
  ,TQ110 AS "原付款條件"
  ,TQ111 AS "原廠別"
  ,TQ112 AS "原採購人員"
  ,TQ113 AS "原送貨地址(一)"
  ,TQ114 AS "原送貨地址(二)"
  ,TQ115 AS "原訂金比率"
  ,TQ116 AS "原營業稅率"
  ,TQ117 AS "原課稅別"
  ,TQ118 AS "原列印格式"
  ,TQ119 AS "原備註"
  ,TQ132 AS "原稅別碼"

FROM ASTTQ
