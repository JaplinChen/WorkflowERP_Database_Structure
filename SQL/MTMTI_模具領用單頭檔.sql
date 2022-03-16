--MTMTI_模具領用單頭檔
SELECT
  ,TI001 AS "領用單別"
  ,TI002 AS "領用單號"
  ,TI003 AS "單據日期"
  ,TI004 AS "領用部門"
  ,TI005 AS "領用人員"
  ,TI006 AS "生產線別"
  ,TI007 AS "加工廠商"
  ,TI008 AS "備註"
  ,TI009 AS "領用日期"
  ,TI010 AS "確認者"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
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
  ,TI013 AS "傳送次數"
  ,TI014 AS "列印次數"

FROM MTMTI
