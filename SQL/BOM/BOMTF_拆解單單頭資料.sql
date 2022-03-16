--BOMTF_拆解單單頭資料
SELECT
  ,TF001 AS "單別"
  ,TF002 AS "單號"
  ,TF003 AS "拆解日期"
  ,TF004 AS "成品品號"
  ,TF005 AS "單位"
  ,TF006 AS "小單位"
  ,TF007 AS "成品數量"
  ,TF008 AS "出庫庫別"
  ,TF009 AS "備註"
  ,TF010 AS "確認碼"
  ,TF011 AS "列印次數"
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
  ,TF015 AS "批號"
  ,TF016 AS "調整單別"
  ,TF017 AS "調整單號"
  ,TF018 AS "調整序號"
  ,TF019 AS "傳送次數"
  ,TF020 AS "產品序號數量"
  ,TF021 AS "儲位"

FROM BOMTF
