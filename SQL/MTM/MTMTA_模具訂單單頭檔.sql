--MTMTA_模具訂單單頭檔
SELECT
  ,TA001 AS "單別"
  ,TA002 AS "單號"
  ,TA003 AS "訂單日期"
  ,TA004 AS "單據日期"
  ,CASE 
   WHEN '1' THEN N'新模'
   WHEN '2' THEN N'修模'
   ELSE ""
   END AS "類別"
  ,TA006 AS "模具編號"
  ,TA007 AS "客戶代號"
  ,TA008 AS "客戶單號"
  ,CASE 
   WHEN '1' THEN N'一次付清'
   WHEN '2' THEN N'比率分攤'
   WHEN '3' THEN N'分期付款'
   WHEN '4' THEN N'數量分攤'
   ELSE ""
   END AS "收款方式"
  ,TA010 AS "收款天數"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TA012 AS "營業稅率"
  ,TA013 AS "訂單幣別"
  ,TA014 AS "匯率"
  ,TA015 AS "訂單金額"
  ,TA016 AS "公司金額分攤比率"
  ,TA017 AS "客戶金額分攤比率"
  ,TA018 AS "預計分攤數量"
  ,TA019 AS "預計分攤金額"
  ,TA020 AS "立帳金額"
  ,TA021 AS "應收金額"
  ,TA022 AS "結案碼"
  ,TA023 AS "備註"
  ,TA024 AS "傳送次數"
  ,TA025 AS "列印碼"
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
  ,TA028 AS "確認者"
  ,TA029 AS "模具銷貨單別"
  ,TA030 AS "模具銷貨單號"
  ,TA031 AS "原幣應收未稅金額"
  ,TA032 AS "原幣應收稅額"
  ,TA033 AS "原幣立帳稅額"
  ,TA039 AS "稅別碼"

FROM MTMTA
