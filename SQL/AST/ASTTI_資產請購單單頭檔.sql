--ASTTI_資產請購單單頭檔
SELECT
  ,TI001 AS "請購單別"
  ,TI002 AS "請購單號"
  ,TI003 AS "請購日期"
  ,TI004 AS "單據日期"
  ,TI005 AS "廠別"
  ,TI006 AS "請購部門"
  ,TI007 AS "請購人員"
  ,TI008 AS "備註"
  ,TI009 AS "列印次數"
  ,TI010 AS "確認碼"
  ,TI011 AS "確認者"
  ,TI012 AS "數量合計"
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
  ,TI014 AS "傳送次數"
  ,TI015 AS "本幣採購總金額"
  ,TI016 AS "預算部門"

FROM ASTTI
