--PALNG_退休金(舊制)資料檔
SELECT
  ,NG001 AS "員工代號"
  ,NG002 AS "退休日"
  ,NG003 AS "工作年資(舊制)"
  ,NG004 AS "退休金基數(舊制)"
  ,NG005 AS "退休金(舊制)"
  ,NG006 AS "備註"
  ,NG007 AS "確認碼"
  ,NG008 AS "確認日期"
  ,NG009 AS "確認者"
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
   END AS "簽核狀態"
  ,NG011 AS "列印次數"
  ,NG012 AS "產生分錄碼"
  ,NG013 AS "傳票單別"
  ,NG014 AS "傳票單號"

FROM PALNG
