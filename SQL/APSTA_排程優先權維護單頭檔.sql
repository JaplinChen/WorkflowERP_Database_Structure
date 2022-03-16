--APSTA_排程優先權維護單頭檔
SELECT
  ,TA001 AS "計劃批號"
  ,TA002 AS "廠別"
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'銷售預測'
   WHEN '9' THEN N'全部'
   ELSE ""
   END AS "預留欄位"
  ,TA004 AS "備註"
  ,TA007 AS "確認碼"
  ,TA008 AS "確認日期"
  ,TA009 AS "確認者"
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
  ,TA013 AS "可用計劃"

FROM APSTA
