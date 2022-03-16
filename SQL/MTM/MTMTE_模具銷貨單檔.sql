--MTMTE_模具銷貨單檔
SELECT
  ,TE001 AS "單別"
  ,TE002 AS "單號"
  ,TE003 AS "銷貨日期"
  ,TE004 AS "單據日期"
  ,TE005 AS "客戶代號"
  ,TE006 AS "模具訂單單別"
  ,TE007 AS "模具訂單編號"
  ,TE008 AS "備註"
  ,TE009 AS "傳送次數"
  ,TE010 AS "列印碼"
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
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TE013 AS "確認者"
  ,TE014 AS "結帳碼"
  ,TE015 AS "結帳單別"
  ,TE016 AS "結帳單號"
  ,TE017 AS "結帳序號"

FROM MTMTE
