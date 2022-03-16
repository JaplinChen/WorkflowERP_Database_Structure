--BOMTD_組合單單頭資料
SELECT
  ,TD001 AS "單別"
  ,TD002 AS "單號"
  ,TD003 AS "組合日期"
  ,TD004 AS "成品品號"
  ,TD005 AS "單位"
  ,TD006 AS "小單位"
  ,TD007 AS "成品數量"
  ,TD008 AS "計入存貨成本工繳"
  ,TD009 AS "不計存貨成本工繳"
  ,TD010 AS "入庫庫別"
  ,TD011 AS "備註"
  ,TD012 AS "確認碼"
  ,TD013 AS "列印次數"
  ,TD014 AS "單據日期"
  ,TD015 AS "確認者"
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
  ,TD017 AS "批號"
  ,TD018 AS "有效日期"
  ,TD019 AS "複檢日期"
  ,TD020 AS "傳送次數"
  ,TD021 AS "產品序號數量"
  ,TD022 AS "儲位"

FROM BOMTD
