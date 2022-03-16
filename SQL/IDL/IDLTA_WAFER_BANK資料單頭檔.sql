--IDLTA_WAFER_BANK資料單頭檔
SELECT
  ,TA001 AS "WAFER_BANK_PO單別"
  ,TA002 AS "WAFER_BANK_PO單號"
  ,TA003 AS "單據日期"
  ,TA004 AS "供應廠商"
  ,TA005 AS "採購日期"
  ,TA006 AS "廠別"
  ,TA007 AS "採購人員"
  ,TA008 AS "付款條件代號"
  ,TA009 AS "製程別"
  ,TA010 AS "光罩層次"
  ,TA011 AS "類別"
  ,TA012 AS "HOLD_條件"
  ,TA013 AS "送貨地址一"
  ,TA014 AS "送貨地址二"
  ,TA015 AS "備註"
  ,TA016 AS "確認碼"
  ,TA017 AS "確認者"
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
  ,TA019 AS "採購金額"
  ,TA020 AS "數量合計"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TA022 AS "Wafer型號"
  ,TA024 AS "確認日期"
  ,TA025 AS "列印次數"
  ,TA027 AS "稅別碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
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
  ,TA030 AS "營業稅率"

FROM IDLTA
