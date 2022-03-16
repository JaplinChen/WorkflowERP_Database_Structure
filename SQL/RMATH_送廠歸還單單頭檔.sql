--RMATH_送廠歸還單單頭檔
SELECT
  ,TH001 AS "送廠歸還單別"
  ,TH002 AS "送廠歸還單號"
  ,TH003 AS "單據日期"
  ,TH004 AS "確認日期"
  ,TH005 AS "維修廠商"
  ,TH006 AS "送修人員"
  ,TH007 AS "送修部門"
  ,TH008 AS "備註"
  ,TH009 AS "確認者"
  ,TH010 AS "總金額"
  ,TH011 AS "列印次數"
  ,TH012 AS "結帳碼"
  ,TH013 AS "應付單別"
  ,TH014 AS "應付單號"
  ,TH015 AS "確認碼"
  ,TH016 AS "應付序號"
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
  ,TH018 AS "傳送次數"
  ,TH019 AS "幣別"
  ,TH020 AS "匯率"
  ,TH021 AS "統一編號"
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
  ,TH023 AS "發票日期"
  ,TH024 AS "發票號碼"
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
  ,TH027 AS "菸酒註記"
  ,TH028 AS "申報年月"
  ,TH029 AS "營業稅率"
  ,TH030 AS "原幣維修金額"
  ,TH031 AS "原幣稅額"
  ,TH032 AS "本幣維修金額"
  ,TH033 AS "本幣稅額"
  ,TH039 AS "稅別碼"
  ,TH040 AS "註記號"

FROM RMATH
