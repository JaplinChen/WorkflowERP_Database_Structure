--FCSTA_調整沖銷單頭檔
SELECT
  ,TA001 AS "子公司代號"
  ,TA002 AS "會計年度"
  ,TA003 AS "期別"
  ,TA004 AS "調整日期"
  ,TA005 AS "備註"
  ,TA006 AS "借方總金額"
  ,TA007 AS "貸方總金額"
  ,TA008 AS "列印次數"
  ,TA009 AS "傳送次數"
  ,TA010 AS "確認碼"
  ,TA011 AS "確認日期"
  ,TA012 AS "確認者"
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
  ,TA019 AS "帳別/合併代號"
  ,CASE 
   WHEN '1' THEN N'自動產生'
   WHEN '2' THEN N'手動輸入'
   ELSE ""
   END AS "來源碼"
  ,CASE 
   WHEN '1' THEN N'調整'
   WHEN '2' THEN N'沖銷'
   ELSE ""
   END AS "用途"

FROM FCSTA
