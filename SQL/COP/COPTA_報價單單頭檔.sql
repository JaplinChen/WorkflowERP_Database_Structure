--COPTA_報價單單頭檔
SELECT
  ,TA001 AS "報價單別"
  ,TA002 AS "報價單號"
  ,TA003 AS "報價日期"
  ,TA004 AS "客戶"
  ,TA005 AS "業務人員"
  ,TA006 AS "客戶全名"
  ,TA007 AS "幣別"
  ,TA008 AS "匯率"
  ,TA009 AS "報價金額"
  ,TA010 AS "價格條件"
  ,TA011 AS "付款條件"
  ,CASE 
   WHEN '1' THEN N'利潤率'
   WHEN '2' THEN N'折扣率'
   ELSE ""
   END AS "計價方式"
  ,TA013 AS "單據日期"
  ,TA014 AS "交貨日"
  ,TA015 AS "確認者"
  ,TA016 AS "客戶確認"
  ,CASE 
   WHEN '1' THEN N'中式'
   WHEN '2' THEN N'英式'
   ELSE ""
   END AS "列印格式"
  ,TA018 AS "列印次數"
  ,TA019 AS "確認碼"
  ,TA020 AS "備註一"
  ,TA021 AS "備註二"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TA023 AS "稅額"
  ,TA024 AS "營業稅率"
  ,TA025 AS "總數量"
  ,TA026 AS "付款條件代號"
  ,TA027 AS "總毛重(Kg)"
  ,TA028 AS "總材積(CUFT)"
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
  ,TA030 AS "總包裝數量"
  ,TA031 AS "傳送次數"
  ,TA032 AS "PDA報價號碼"
  ,TA033 AS "連絡人"
  ,TA034 AS "PDA登錄者代號"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"
  ,TA036 AS "EBC報價單號"
  ,TA037 AS "EBC報價版次"
  ,TA038 AS "匯至EBC"
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
  ,CASE 
   WHEN '1' THEN N'CRM'
   ELSE ""
   END AS "來源"
  ,CASE 
   WHEN '1' THEN N'空運'
   WHEN '2' THEN N'海運'
   WHEN '3' THEN N'海空聯運'
   WHEN '4' THEN N'郵寄'
   WHEN '5' THEN N'陸運'
   WHEN '6' THEN N'自取'
   WHEN '7' THEN N'自送'
   WHEN '8' THEN N'快遞'
   ELSE ""
   END AS "運輸方式"
  ,TA046 AS "起始港口"
  ,TA047 AS "目的港口"
  ,TA048 AS "目的地"
  ,TA049 AS "稅別碼"
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
   END AS "交易條件1"
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
   END AS "交易條件2"
  ,TA060 AS "出口港"
  ,TA061 AS "經過港口"
  ,TA062 AS "目的港口"
  ,TA063 AS "單身多稅率"

FROM COPTA
