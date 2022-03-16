--PURTI_退貨單單頭檔
SELECT
  ,TI001 AS "單別"
  ,TI002 AS "單號"
  ,TI003 AS "退貨日期"
  ,TI004 AS "供應廠商"
  ,TI005 AS "廠別"
  ,TI006 AS "幣別"
  ,TI007 AS "匯率"
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
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TI010 AS "列印次數"
  ,TI011 AS "原幣退貨金額"
  ,TI012 AS "備註"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TI014 AS "單據日期"
  ,TI015 AS "原幣退貨稅額"
  ,TI016 AS "廠商全名"
  ,TI017 AS "統一編號"
  ,TI018 AS "發票號碼"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TI020 AS "菸酒註記"
  ,TI021 AS "件數"
  ,TI022 AS "數量合計"
  ,TI023 AS "發票日期"
  ,TI024 AS "產生分錄碼"
  ,TI025 AS "申報年月"
  ,TI026 AS "確認者"
  ,TI027 AS "營業稅率"
  ,TI028 AS "本幣退貨金額"
  ,TI029 AS "本幣退貨稅額"
  ,TI030 AS "付款條件代號"
  ,TI031 AS "包裝數量合計"
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
  ,TI034 AS "傳送次數"
  ,TI035 AS "流程代號"
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功(來源廠商)'
   WHEN 'y' THEN N'拋轉成功(下游廠商)'
   WHEN 'N' THEN N'未拋轉'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'u' THEN N'還原失敗'
   ELSE ""
   END AS "拋轉狀態"
  ,CASE 
   WHEN '1' THEN N'採購'
   WHEN '2' THEN N'保留'
   WHEN '3' THEN N'製令'
   ELSE ""
   END AS "類別"
  ,TI038 AS "來源單別"
  ,TI039 AS "來源單號"
  ,TI045 AS "稅別碼"
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
  ,TI047 AS "海關手冊"
  ,TI048 AS "註記號"
  ,TI049 AS "單身多稅率"
  ,TI050 AS "發票列印次數"
  ,TI051 AS "稅幣匯率"
  ,TI052 AS "聯絡人"

FROM PURTI
