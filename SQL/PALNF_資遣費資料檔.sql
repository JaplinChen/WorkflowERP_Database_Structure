--PALNF_資遣費資料檔
SELECT
  ,NF001 AS "員工代號"
  ,NF002 AS "資遣日"
  ,NF003 AS "工作年資(舊制)"
  ,NF004 AS "工作年資(新制)"
  ,NF005 AS "資遣費(舊制)"
  ,NF006 AS "資遣費(新制)"
  ,NF007 AS "備註"
  ,NF008 AS "確認碼"
  ,NF009 AS "確認日期"
  ,NF010 AS "確認者"
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
  ,NF012 AS "列印次數"
  ,NF013 AS "產生分錄碼"
  ,NF014 AS "傳票單別"
  ,NF015 AS "傳票單號"

FROM PALNF
