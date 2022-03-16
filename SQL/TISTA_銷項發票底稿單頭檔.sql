--TISTA_銷項發票底稿單頭檔
SELECT
  ,TA001 AS "來源單號"
  ,TA002 AS "來源日期"
  ,CASE 
   WHEN '1' THEN N'現銷'
   WHEN '2' THEN N'結帳單'
   WHEN '3' THEN N'人工'
   ELSE ""
   END AS "來源方式"
  ,TA004 AS "商品行數"
  ,TA005 AS "買方編號"
  ,TA006 AS "買方名稱"
  ,TA007 AS "買方稅號"
  ,TA008 AS "買方地址電話"
  ,TA009 AS "買方銀行帳號"
  ,TA010 AS "稅率"
  ,TA011 AS "備註"
  ,TA012 AS "復核人"
  ,TA013 AS "收款人"
  ,CASE 
   WHEN '0' THEN N'未異動'
   WHEN '1' THEN N'匯出未開票'
   WHEN '2' THEN N'已開發票'
   WHEN 'V' THEN N'發票作廢'
   ELSE ""
   END AS "狀態碼"
  ,TA015 AS "新商品行數"
  ,TA016 AS "新買方名稱"
  ,TA017 AS "新買方稅號"
  ,TA018 AS "新買方地址電話"
  ,TA019 AS "新買方銀行帳號"
  ,TA020 AS "新備註"
  ,TA021 AS "新復核人"
  ,TA022 AS "新收款人"
  ,TA023 AS "新發票代碼"
  ,TA024 AS "新發票號碼"
  ,TA025 AS "新開立日期"
  ,TA026 AS "新不含稅金額"
  ,TA027 AS "新稅率"
  ,TA028 AS "新賣方地址"
  ,TA029 AS "新賣方銀行帳號"
  ,TA030 AS "新開票人"
  ,CASE 
   WHEN '0' THEN N'專用發票'
   WHEN '1' THEN N'普通發票'
   ELSE ""
   END AS "新發票種類"
  ,TA032 AS "新稅額"
  ,TA038 AS "新註記號"
  ,CASE 
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'增值稅普通發票'
   ELSE ""
   END AS "發票種類"

FROM TISTA
