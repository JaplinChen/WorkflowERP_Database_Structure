--COPTN_出貨派車單頭資料檔
SELECT
  ,TN001 AS "單別"
  ,TN002 AS "單號"
  ,TN003 AS "單據日期"
  ,TN004 AS "運送方式"
  ,TN005 AS "車號"
  ,TN006 AS "車次"
  ,TN007 AS "送貨者"
  ,TN008 AS "送貨者名稱"
  ,TN009 AS "主要路線"
  ,TN010 AS "廠別"
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
  ,TN013 AS "營業稅率"
  ,TN014 AS "本幣運費金額"
  ,TN015 AS "本幣運費稅額"
  ,TN016 AS "付款條件代號"
  ,TN017 AS "總件數"
  ,TN018 AS "累積材積"
  ,TN019 AS "累積重量"
  ,TN020 AS "備註"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TN022 AS "列印次數"
  ,TN023 AS "派車日期"
  ,TN024 AS "確認者"
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
  ,TN026 AS "傳送次數"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"
  ,TN033 AS "稅別碼"

FROM COPTN
