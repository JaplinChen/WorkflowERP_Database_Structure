--BCHTA_保稅異動單據檔
SELECT
  ,TA001 AS "單別"
  ,TA002 AS "單號"
  ,TA003 AS "序號"
  ,TA004 AS "入出別"
  ,TA005 AS "單據日期"
  ,TA006 AS "品號"
  ,TA007 AS "數量"
  ,TA008 AS "庫別"
  ,TA009 AS "備註"
  ,TA010 AS "異動代碼"
  ,TA011 AS "已放行數量"
  ,TA012 AS "確認碼"
  ,TA013 AS "單價"
  ,TA014 AS "總價值"
  ,TA015 AS "關稅率"
  ,TA016 AS "預估稅額"
  ,TA017 AS "報單類別"
  ,TA018 AS "報單號碼"
  ,TA019 AS "放行日期"
  ,TA020 AS "參考單號"
  ,TA021 AS "保稅編號"
  ,TA022 AS "BOM編號"
  ,TA023 AS "資料來源"
  ,TA024 AS "客戶代號"
  ,TA025 AS "生產國別"
  ,TA026 AS "稅則"
  ,TA027 AS "確認者"
  ,TA028 AS "異動日期"
  ,TA029 AS "列印次數"
  ,TA030 AS "傳送次數"
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
  ,TA032 AS "廠商代號"
  ,TA033 AS "按月彙報碼"
  ,TA039 AS "註記號"

FROM BCHTA
