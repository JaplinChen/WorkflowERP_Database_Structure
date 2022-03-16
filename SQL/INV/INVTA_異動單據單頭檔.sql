--INVTA_異動單據單頭檔
SELECT
  ,TA001 AS "單別"
  ,TA002 AS "單號"
  ,TA003 AS "異動日期"
  ,TA004 AS "部門代號"
  ,TA005 AS "備註"
  ,TA006 AS "確認碼"
  ,TA007 AS "列印次數"
  ,TA008 AS "廠別代號"
  ,TA009 AS "單據性質碼"
  ,TA010 AS "件數"
  ,TA011 AS "總數量"
  ,TA012 AS "總金額"
  ,TA013 AS "產生分錄碼"
  ,TA014 AS "單據日期"
  ,TA015 AS "確認者"
  ,TA016 AS "總包裝數量"
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
  ,CASE 
   WHEN '0' THEN N'依品號預設'
   WHEN 'Y' THEN N'預設為保稅品'
   WHEN 'N' THEN N'預設為非保稅品'
   ELSE ""
   END AS "保稅碼"
  ,TA019 AS "傳送次數"
  ,CASE 
   WHEN '1' THEN N'空運'
   WHEN '2' THEN N'海運'
   WHEN '3' THEN N'海空聯運'
   WHEN '4' THEN N'郵寄'
   WHEN '5' THEN N'陸運'
   WHEN '6' THEN N'自取'
   WHEN '7' THEN N'自送'
   WHEN '8' THEN N'快遞'
   ELSE ""
   END AS "運輸方式"
  ,TA021 AS "派車單別"
  ,TA022 AS "派車單號"
  ,CASE 
   WHEN '1' THEN N'CRM'
   ELSE ""
   END AS "來源"
  ,TA028 AS "海關手冊"

FROM INVTA
