--NOTTF_銀行存款存提單頭檔
SELECT
  ,TF001 AS "存提單別"
  ,TF002 AS "存提單號"
  ,TF003 AS "存提日期"
  ,TF004 AS "銀行代號"
  ,TF005 AS "幣別"
  ,TF006 AS "匯率"
  ,TF007 AS "備註"
  ,TF008 AS "傳票單別"
  ,TF009 AS "傳票單號"
  ,TF010 AS "確認碼"
  ,TF011 AS "單據日期"
  ,TF012 AS "確認者"
  ,TF013 AS "原幣合計"
  ,TF014 AS "本國幣合計"
  ,TF015 AS "列印次數"
  ,TF016 AS "產生分錄碼"
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
  ,TF018 AS "轉出碼"
  ,TF019 AS "傳送次數"

FROM NOTTF
