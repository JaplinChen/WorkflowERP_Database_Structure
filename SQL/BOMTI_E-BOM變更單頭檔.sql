--BOMTI_E-BOM變更單頭檔
SELECT
  ,TI001 AS "變更單別"
  ,TI002 AS "變更單號"
  ,TI003 AS "變更日期"
  ,TI004 AS "緊急碼"
  ,TI005 AS "變更原因"
  ,TI006 AS "備註"
  ,TI007 AS "確認碼"
  ,TI008 AS "列印次數"
  ,TI009 AS "單據日期"
  ,TI010 AS "確認者"
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
  ,TI012 AS "傳送次數"

FROM BOMTI
