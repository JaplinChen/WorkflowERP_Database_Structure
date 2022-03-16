--COPUJ_訂單BY PASS單頭資料檔
SELECT
  ,UJ001 AS "單別"
  ,UJ002 AS "單號"
  ,UJ003 AS "版次"
  ,UJ004 AS "確認日期"
  ,UJ005 AS "確認者"
  ,UJ006 AS "確認碼"
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
  ,UJ008 AS "備註"

FROM COPUJ
