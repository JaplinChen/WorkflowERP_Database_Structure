--MOCTH_託外進貨單頭檔
SELECT
  ,TH001 AS "託外進貨單別"
  ,TH002 AS "託外進貨單號"
  ,TH003 AS "託外進貨日期"
  ,TH004 AS "廠別"
  ,TH005 AS "加工廠商"
  ,TH006 AS "廠商單號"
  ,TH007 AS "幣別"
  ,TH008 AS "匯率"
  ,TH009 AS "件數"
  ,TH010 AS "備註"
  ,TH011 AS "統一編號"
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
  ,TH013 AS "發票日期"
  ,TH014 AS "發票號碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TH017 AS "保留欄位"
  ,TH018 AS "原幣加工金額"
  ,TH019 AS "扣款金額"
  ,TH020 AS "原幣稅額"
  ,TH021 AS "進貨費用"
  ,TH022 AS "數量合計"
  ,TH023 AS "確認碼"
  ,TH024 AS "生產記錄更新碼"
  ,TH025 AS "列印次數"
  ,TH026 AS "自動扣料更新碼"
  ,TH027 AS "原幣未稅貨款金額"
  ,TH028 AS "申報年月"
  ,TH029 AS "單據日期"
  ,TH030 AS "營業稅率"
  ,TH031 AS "本幣未稅金額"
  ,TH032 AS "本幣稅額"
  ,TH033 AS "付款條件代號"
  ,TH034 AS "包裝數量合計"
  ,TH035 AS "廠供料領料更新碼"
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
  ,CASE 
   WHEN '0' THEN N'依品號預設'
   WHEN 'Y' THEN N'預設為保稅品'
   WHEN 'N' THEN N'預設為非保稅品'
   ELSE ""
   END AS "保稅碼"
  ,TH038 AS "傳送次數"
  ,CASE 
   WHEN '0' THEN N'待通知'
   WHEN '1' THEN N'通知中'
   WHEN 'N' THEN N'不通知'
   WHEN 'Y' THEN N'已通知'
   ELSE ""
   END AS "通知碼"
  ,TH044 AS "稅別碼"
  ,TH045 AS "製造廠商"
  ,TH046 AS "註記號"
  ,TH047 AS "稅幣匯率"
  ,TH048 AS "發票註記碼長度"
  ,TH049 AS "發票流水碼長度"
  ,TH050 AS "單身多稅率"
  ,TH200 AS "供應商全名"
  ,TH500 AS "媒體檔案"

FROM MOCTH
