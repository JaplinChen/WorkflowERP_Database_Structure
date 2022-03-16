--MTMTF_模具進貨單檔
SELECT
  ,TF001 AS "單別"
  ,TF002 AS "單號"
  ,TF003 AS "進貨日期"
  ,TF004 AS "單據日期"
  ,TF005 AS "廠商代號"
  ,TF006 AS "模具採購單別"
  ,TF007 AS "模具採購編號"
  ,TF008 AS "備註"
  ,TF009 AS "傳送次數"
  ,TF010 AS "列印碼"
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
  ,TF013 AS "確認者"
  ,TF014 AS "結帳碼"
  ,TF015 AS "憑單單別"
  ,TF016 AS "憑單單號"
  ,TF017 AS "憑單序號"

FROM MTMTF
