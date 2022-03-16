--NOTTP_匯兌損益調整單頭檔
SELECT
  ,TP001 AS "調整單別"
  ,TP002 AS "調整單號"
  ,TP003 AS "調整日期"
  ,TP004 AS "傳票單別"
  ,TP005 AS "傳票單號"
  ,TP006 AS "調整金額合計"
  ,TP007 AS "備註"
  ,TP008 AS "列印次數"
  ,TP009 AS "單據日期"
  ,TP010 AS "確認碼"
  ,TP011 AS "確認者"
  ,TP012 AS "產生分錄碼"
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

FROM NOTTP
