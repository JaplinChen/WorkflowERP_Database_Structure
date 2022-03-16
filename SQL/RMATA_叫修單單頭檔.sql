--RMATA_叫修單單頭檔
SELECT
  ,TA001 AS "叫修單別"
  ,TA002 AS "叫修單號"
  ,TA003 AS "單據日期"
  ,TA004 AS "客戶代號"
  ,TA005 AS "產品品號"
  ,TA006 AS "產品品名"
  ,TA007 AS "產品規格"
  ,TA008 AS "合約代號"
  ,TA009 AS "接單人員"
  ,TA010 AS "問題描述"
  ,TA011 AS "預計完修日"
  ,TA012 AS "實際完修日"
  ,TA013 AS "產品序號"
  ,TA014 AS "客戶確認"
  ,TA015 AS "確認日期"
  ,TA016 AS "確認者"
  ,TA017 AS "備註"
  ,TA018 AS "叫修列印次數"
  ,TA019 AS "報價列印次數"
  ,TA020 AS "客戶收件者"
  ,TA021 AS "客戶全名"
  ,TA022 AS "發票地址(一)"
  ,TA023 AS "發票地址(二)"
  ,TA024 AS "發票郵遞區號"
  ,TA025 AS "TEL_NO"
  ,TA026 AS "交貨地址(一)"
  ,TA027 AS "交貨地址(二)"
  ,TA028 AS "郵遞區號"
  ,TA029 AS "報價金額(改成合計)"
  ,TA030 AS "確認碼"
  ,CASE 
   WHEN '0' THEN N'未處理'
   WHEN '1' THEN N'維修中'
   WHEN '2' THEN N'送原廠3送廠商歸還'
   WHEN '4' THEN N'維修完工'
   WHEN '5' THEN N'交貨完成'
   ELSE ""
   END AS "狀態碼"
  ,TA032 AS "下站代號"
  ,TA033 AS "下站簡稱"
  ,TA034 AS "FAX_NO"
  ,CASE 
   WHEN '0' THEN N'未派工'
   WHEN '1' THEN N'轉維修站'
   WHEN '2' THEN N'送原廠'
   ELSE ""
   END AS "派工碼"
  ,TA036 AS "統一編號"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'普通發票'
   WHEN 'C' THEN N'免用發票'
   ELSE ""
   END AS "發票聯數"
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
  ,TA039 AS "叫修傳送次數"
  ,TA040 AS "報價傳送次數"
  ,TA041 AS "幣別"
  ,TA042 AS "匯率"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TA044 AS "營業稅率"
  ,TA045 AS "稅額"
  ,TA046 AS "報價金額"
  ,TA052 AS "稅別碼"

FROM RMATA
