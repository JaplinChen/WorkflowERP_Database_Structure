--INVTJ_成本開帳調整單頭檔
SELECT
  ,TJ001 AS "單別"
  ,TJ002 AS "單號"
  ,TJ003 AS "調整日期"
  ,TJ004 AS "部門"
  ,TJ005 AS "廠別"
  ,TJ006 AS "備註"
  ,TJ007 AS "總數量"
  ,TJ008 AS "總金額"
  ,TJ009 AS "列印次數"
  ,TJ010 AS "確認碼"
  ,TJ011 AS "產生分錄碼"
  ,TJ012 AS "單據日期"
  ,TJ013 AS "確認者"
  ,TJ014 AS "總包裝數量"
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
  ,TJ016 AS "傳送次數"

FROM INVTJ
