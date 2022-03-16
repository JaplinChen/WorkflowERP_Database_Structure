--MOCTK_託外退貨單頭檔
SELECT
  ,TK001 AS "退貨單別"
  ,TK002 AS "退貨單號"
  ,TK003 AS "退貨日期"
  ,TK004 AS "加工廠商"
  ,TK005 AS "廠別"
  ,TK006 AS "幣別"
  ,TK007 AS "匯率"
  ,TK008 AS "件數"
  ,TK009 AS "備註"
  ,TK010 AS "統一編號"
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
  ,TK012 AS "發票日期"
  ,TK013 AS "發票號碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TK015 AS "扣抵區分"
  ,TK016 AS "保留欄位"
  ,TK017 AS "原幣未稅金額"
  ,TK018 AS "列印次數"
  ,TK019 AS "原幣稅額"
  ,TK020 AS "數量合計"
  ,TK021 AS "確認碼"
  ,TK022 AS "生產記錄更新碼"
  ,TK023 AS "自動扣料更新碼"
  ,TK024 AS "產生分錄碼-成本"
  ,TK025 AS "產生分錄碼-費用"
  ,TK026 AS "申報年月"
  ,TK027 AS "單據日期"
  ,TK028 AS "確認者"
  ,TK029 AS "營業稅率"
  ,TK030 AS "本幣未稅貨額"
  ,TK031 AS "本幣稅額"
  ,TK032 AS "付款條件代號"
  ,TK033 AS "包裝數量合計"
  ,TK034 AS "廠供料領料更新碼"
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
  ,TK037 AS "傳送次數"
  ,TK043 AS "稅別碼"
  ,TK044 AS "註記號"
  ,TK045 AS "發票列印次數"
  ,TK046 AS "稅幣匯率"
  ,TK047 AS "單身多稅率"

FROM MOCTK
