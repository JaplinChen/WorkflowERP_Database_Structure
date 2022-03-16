--PURTA_請購單單頭資料檔
SELECT
  ,TA001 AS "請購單別"
  ,TA002 AS "請購單號"
  ,TA003 AS "請購日期"
  ,TA004 AS "請購部門"
  ,TA005 AS "來源單號"
  ,TA006 AS "備註"
  ,TA007 AS "確認碼"
  ,TA008 AS "列印次數"
  ,CASE 
   WHEN '1' THEN N'MRP'
   WHEN '2' THEN N'LRP'
   WHEN '3' THEN N'再補貨建議表'
   WHEN '4' THEN N'BOM 自動請購'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "來源別"
  ,TA010 AS "廠別"
  ,TA011 AS "數量合計"
  ,TA012 AS "請購人員"
  ,TA013 AS "單據日期"
  ,TA014 AS "確認者"
  ,TA015 AS "包裝數量合計"
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
  ,TA017 AS "傳送次數"
  ,TA018 AS "EBC請購單號"
  ,TA019 AS "EBC請購版次"
  ,TA020 AS "本幣金額合計"
  ,TA021 AS "版次"
  ,TA022 AS "預算部門"
  ,TA028 AS "鎖定碼"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TA551 AS "請購總金額"

FROM PURTA
