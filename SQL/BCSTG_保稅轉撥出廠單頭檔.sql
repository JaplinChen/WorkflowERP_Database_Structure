--BCSTG_保稅轉撥出廠單頭檔
SELECT
  ,TG001 AS "保留欄位"
  ,TG002 AS "單別"
  ,TG003 AS "單號"
  ,TG004 AS "單據日期"
  ,CASE 
   WHEN '1' THEN N'修理'
   WHEN '2' THEN N'檢測'
   WHEN '3' THEN N'核樣'
   WHEN '4' THEN N'展列'
   ELSE ""
   END AS "異動原因"
  ,TG006 AS "廠商代號"
  ,TG007 AS "員工代號"
  ,TG008 AS "部門代號"
  ,TG009 AS "異動日期"
  ,TG010 AS "備註"
  ,TG011 AS "確認碼"
  ,TG012 AS "確認者"
  ,TG013 AS "列印次數"
  ,TG014 AS "傳送次數"
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
  ,TG016 AS "預計歸還日"

FROM BCSTG
