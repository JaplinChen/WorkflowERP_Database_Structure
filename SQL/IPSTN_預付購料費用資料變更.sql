--IPSTN_預付購料費用資料變更
SELECT
  ,TN001 AS "預付購料變更單別"
  ,TN002 AS "預付購料變更單號"
  ,TN003 AS "版次"
  ,TN004 AS "序號"
  ,TN005 AS "費用代號"
  ,TN006 AS "交易幣別"
  ,TN007 AS "匯率"
  ,TN008 AS "費用金額"
  ,TN009 AS "應付廠商代號"
  ,TN010 AS "統一編號"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'普通發票'
   WHEN 'C' THEN N'免用發票'
   ELSE ""
   END AS "發票聯數"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TN013 AS "發票日期"
  ,TN014 AS "發票號碼"
  ,TN015 AS "營業稅率"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TN017 AS "菸酒註記"
  ,TN018 AS "申報年月"
  ,TN019 AS "會計科目"
  ,TN020 AS "付款條件代號"
  ,TN021 AS "原幣未稅金額"
  ,TN022 AS "原幣稅額"
  ,TN023 AS "本幣未稅金額"
  ,TN024 AS "本幣稅額"
  ,TN025 AS "變更原因"
  ,TN026 AS "新備註"
  ,TN032 AS "稅別碼"
  ,TN033 AS "註記號"
  ,TN104 AS "原序號"
  ,TN105 AS "原費用代號"
  ,TN106 AS "原交易幣別"
  ,TN107 AS "原匯率"
  ,TN108 AS "原費用金額"
  ,TN109 AS "原應付廠商代號"
  ,TN110 AS "原統一編號"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'普通發票'
   WHEN 'C' THEN N'免用發票'
   ELSE ""
   END AS "原發票聯數"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "原課稅別"
  ,TN113 AS "原發票日期"
  ,TN114 AS "原發票號碼"
  ,TN115 AS "原營業稅率"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "原扣抵區分"
  ,TN117 AS "原菸酒註記"
  ,TN118 AS "原申報年月"
  ,TN119 AS "原會計科目"
  ,TN120 AS "原付款條件代號"
  ,TN121 AS "原原幣未稅金額"
  ,TN122 AS "原原幣稅額"
  ,TN123 AS "原本幣未稅金額"
  ,TN124 AS "原本幣稅額"
  ,TN125 AS "原備註"
  ,TN132 AS "原稅別碼"
  ,TN133 AS "原註記號"

FROM IPSTN
