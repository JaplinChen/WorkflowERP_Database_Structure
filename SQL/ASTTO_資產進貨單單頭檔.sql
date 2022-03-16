--ASTTO_資產進貨單單頭檔
SELECT
  ,TO001 AS "單別"
  ,TO002 AS "單號"
  ,TO003 AS "進貨日期"
  ,TO004 AS "單據日期"
  ,TO005 AS "供應廠商"
  ,TO006 AS "廠別"
  ,TO007 AS "廠商單號"
  ,TO008 AS "幣別"
  ,TO009 AS "匯率"
  ,TO010 AS "備註"
  ,TO011 AS "列印次數"
  ,TO012 AS "付款條件代號"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TO014 AS "更新碼"
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
  ,TO016 AS "件數"
  ,TO017 AS "統一編號"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'農產品收購憑證'
   WHEN 'G' THEN N'海關代徵完稅憑證'
   WHEN 'N' THEN N'不可抵扣專用發票'
   WHEN 'S' THEN N'可抵扣專用發票'
   WHEN 'T' THEN N'運輸發票'
   WHEN 'W' THEN N'廢舊物資收購憑證'
   WHEN 'Z' THEN N'其他'
   ELSE ""
   END AS "發票聯數"
  ,TO019 AS "營業稅率"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TO021 AS "發票號碼"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TO023 AS "發票日期"
  ,TO024 AS "申報年月"
  ,TO025 AS "採購單別"
  ,TO026 AS "採購單號"
  ,TO027 AS "進貨金額"
  ,TO028 AS "扣款金額"
  ,TO029 AS "原幣貨款金額"
  ,TO030 AS "原幣稅額"
  ,TO031 AS "本幣貨款金額"
  ,TO032 AS "本幣稅額"
  ,TO033 AS "進貨費用"
  ,TO034 AS "數量合計"
  ,TO035 AS "預付待抵單別"
  ,TO036 AS "預付待抵單號"
  ,TO037 AS "沖抵金額"
  ,TO038 AS "沖抵稅額"
  ,TO039 AS "傳送次數"
  ,TO045 AS "稅別碼"
  ,TO046 AS "註記號"
  ,TO047 AS "稅幣匯率"
  ,TO048 AS "發票註記碼長度"
  ,TO049 AS "發票流水碼長度"
  ,TO050 AS "聯絡人"
  ,TO200 AS "供應商全名"

FROM ASTTO
