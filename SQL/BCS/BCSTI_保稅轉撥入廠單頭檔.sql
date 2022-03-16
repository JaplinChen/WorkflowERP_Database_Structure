--BCSTI_保稅轉撥入廠單頭檔
SELECT
  ,TI001 AS "保留欄位"
  ,TI002 AS "單別"
  ,TI003 AS "單號"
  ,TI004 AS "單據日期"
  ,CASE 
   WHEN '1' THEN N'修理'
   WHEN '2' THEN N'檢測'
   WHEN '3' THEN N'核樣'
   WHEN '4' THEN N'展列'
   ELSE ""
   END AS "異動原因"
  ,TI006 AS "廠商代號"
  ,TI007 AS "員工代號"
  ,TI008 AS "部門代號"
  ,TI009 AS "異動日期"
  ,TI010 AS "備註"
  ,TI011 AS "確認碼"
  ,TI012 AS "確認者"
  ,TI013 AS "列印次數"
  ,TI014 AS "傳送次數"
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

FROM BCSTI
