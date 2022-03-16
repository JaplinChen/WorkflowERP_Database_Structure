--MOCTF_生產入庫單頭檔
SELECT
  ,TF001 AS "入庫單別"
  ,TF002 AS "入庫單號"
  ,TF003 AS "入庫日期"
  ,TF004 AS "廠別代號"
  ,TF005 AS "備註"
  ,TF006 AS "確認碼"
  ,TF007 AS "生產記錄更新碼"
  ,TF008 AS "列印次數"
  ,TF009 AS "自動扣料更新碼"
  ,TF010 AS "產生分錄碼-成本"
  ,TF011 AS "生產線別"
  ,TF012 AS "單據日期"
  ,TF013 AS "確認者"
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
  ,CASE 
   WHEN '0' THEN N'依品號預設'
   WHEN 'Y' THEN N'預設為保稅品'
   WHEN 'N' THEN N'預設為非保稅品'
   ELSE ""
   END AS "保稅碼"
  ,TF016 AS "傳送次數"
  ,TF200 AS "單頭條碼"

FROM MOCTF
