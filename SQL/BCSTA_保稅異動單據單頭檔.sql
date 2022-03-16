--BCSTA_保稅異動單據單頭檔
SELECT
  ,TA001 AS "異動代碼"
  ,TA002 AS "單別"
  ,TA003 AS "單號"
  ,TA004 AS "單據日期"
  ,TA005 AS "報單號碼"
  ,TA006 AS "放行日期"
  ,TA007 AS "參考單號"
  ,TA008 AS "入出別"
  ,TA009 AS "保稅編號"
  ,TA010 AS "備註"
  ,TA011 AS "資料來源"
  ,CASE 
   WHEN '1' THEN N'保稅區內銷'
   WHEN '2' THEN N'補稅內銷'
   ELSE ""
   END AS "內銷區分"
  ,TA013 AS "客戶廠商代號"
  ,TA014 AS "確認碼"
  ,TA015 AS "確認者"
  ,TA016 AS "異動日期"
  ,TA017 AS "列印次數"
  ,TA018 AS "傳送次數"
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
  ,TA020 AS "報單類別"
  ,TA026 AS "註記號"

FROM BCSTA
