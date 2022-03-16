--RMATF_送廠維修單單頭檔
SELECT
  ,TF001 AS "送廠維修單別"
  ,TF002 AS "送廠維修單號"
  ,TF003 AS "單據日期"
  ,TF004 AS "確認日期"
  ,TF005 AS "維修廠商"
  ,TF006 AS "送修人員"
  ,TF007 AS "送修部門"
  ,TF008 AS "備註"
  ,TF009 AS "確認者"
  ,TF010 AS "總數量"
  ,TF011 AS "列印次數"
  ,TF012 AS "確認碼"
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
  ,TF014 AS "傳送次數"

FROM RMATF
