--ASTTS_未轉資產退貨單單頭檔
SELECT
  ,TS001 AS "單別"
  ,TS002 AS "單號"
  ,TS003 AS "退貨日期"
  ,TS004 AS "單據日期"
  ,TS005 AS "供應廠商"
  ,TS006 AS "廠別"
  ,TS007 AS "幣別"
  ,TS008 AS "匯率"
  ,TS009 AS "備註"
  ,TS010 AS "列印次數"
  ,TS011 AS "付款條件代號"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
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
  ,TS014 AS "件數"
  ,TS015 AS "統一編號"
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
  ,TS017 AS "營業稅率"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TS019 AS "發票號碼"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TS021 AS "發票日期"
  ,TS022 AS "申報年月"
  ,TS023 AS "退貨金額"
  ,TS024 AS "原幣退貨金額"
  ,TS025 AS "原幣稅額"
  ,TS026 AS "本幣退貨金額"
  ,TS027 AS "本幣稅額"
  ,TS028 AS "數量合計"
  ,TS029 AS "傳送次數"
  ,TS030 AS "產生分錄碼"
  ,TS031 AS "稅別碼"
  ,TS032 AS "註記號"
  ,TS033 AS "稅幣匯率"
  ,TS037 AS "確認者"

FROM ASTTS
