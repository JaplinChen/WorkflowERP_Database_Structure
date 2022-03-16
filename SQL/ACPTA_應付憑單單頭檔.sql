--ACPTA_應付憑單單頭檔
SELECT
  ,TA001 AS "憑單單別"
  ,TA002 AS "憑單單號"
  ,TA003 AS "憑單日期"
  ,TA004 AS "供應廠商"
  ,TA005 AS "廠別"
  ,TA006 AS "統一編號"
  ,TA008 AS "幣別"
  ,TA009 AS "匯率"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'農產品收購憑證'
   WHEN 'G' THEN N'海關代徵完稅憑證'
   WHEN 'N' THEN N'不可抵扣專用發票'
   WHEN 'S' THEN N'可抵扣專用發票'
   WHEN 'T' THEN N'運輸發票'
   WHEN 'W' THEN N'廢舊物資收購憑證'
   WHEN 'Z' THEN N'其他'
   ELSE ""
   END AS "發票聯數"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TA013 AS "煙酒註記"
  ,TA014 AS "發票號碼"
  ,TA015 AS "發票日期"
  ,TA016 AS "發票貨款"
  ,TA017 AS "發票稅額"
  ,TA018 AS "發票作廢"
  ,TA019 AS "預計付款日"
  ,TA020 AS "預計兌現日"
  ,TA021 AS "備註"
  ,TA022 AS "採購單別"
  ,TA023 AS "採購單號"
  ,TA024 AS "確認碼"
  ,TA025 AS "更新碼"
  ,TA026 AS "結案碼"
  ,TA027 AS "列印次數"
  ,TA028 AS "應付金額"
  ,TA029 AS "營業稅額"
  ,TA030 AS "已付金額"
  ,TA031 AS "產生分錄碼"
  ,TA032 AS "申報年月"
  ,TA033 AS "凍結付款碼"
  ,TA034 AS "單據日期"
  ,TA035 AS "確認者"
  ,TA036 AS "營業稅率"
  ,TA037 AS "本幣應付金額"
  ,TA038 AS "本幣營業稅額"
  ,TA039 AS "付款條件代號"
  ,TA040 AS "取得折扣付款日"
  ,TA041 AS "取得折扣兌現日"
  ,TA042 AS "折扣(%)"
  ,TA043 AS "已沖稅額"
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
  ,TA047 AS "傳送次數"
  ,TA048 AS "本幣已付金額"
  ,TA049 AS "發票代碼"
  ,TA050 AS "代徵營業稅"
  ,TA051 AS "本幣完稅價格"
  ,TA052 AS "訂金序號"
  ,TA053 AS "折讓單日期"
  ,CASE 
   WHEN '1' THEN N'CRM'
   ELSE ""
   END AS "來源"
  ,TA059 AS "稅別碼"
  ,TA060 AS "註記號"
  ,TA061 AS "單身多稅率"
  ,TA062 AS "稅幣匯率"
  ,TA063 AS "發票註記碼長度"
  ,TA064 AS "發票流水碼長度"

FROM ACPTA
