--BOMTA_BOM變更單頭檔
SELECT
  ,TA001 AS "變更單別"
  ,TA002 AS "變更單號"
  ,TA003 AS "變更日期"
  ,TA004 AS "緊急碼"
  ,TA005 AS "變更原因"
  ,TA006 AS "備註"
  ,TA007 AS "確認碼"
  ,TA008 AS "列印次數"
  ,TA009 AS "單據日期"
  ,TA010 AS "確認者"
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
  ,TA012 AS "傳送次數"

FROM BOMTA
