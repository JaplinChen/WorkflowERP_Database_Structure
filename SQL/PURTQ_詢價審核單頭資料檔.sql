--PURTQ_詢價審核單頭資料檔
SELECT
  ,TQ001 AS "請購單別"
  ,TQ002 AS "請購單號"
  ,TQ003 AS "審核日期"
  ,TQ004 AS "備註"
  ,TQ005 AS "確認碼"
  ,TQ006 AS "列印次數"
  ,TQ007 AS "確認者"
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
  ,TQ009 AS "傳送次數"
  ,TQ010 AS "單據日期"

FROM PURTQ
