--ACRTA_結帳單單頭檔
SELECT
  ,TA001 AS "結帳單別"
  ,TA002 AS "結帳單號"
  ,TA003 AS "結帳日期"
  ,TA004 AS "客戶代號"
  ,TA005 AS "收款業務員"
  ,TA006 AS "廠別"
  ,TA007 AS "統一編號"
  ,TA008 AS "客戶全名"
  ,TA009 AS "幣別"
  ,TA010 AS "匯率"
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
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TA013 AS "產生分錄碼"
  ,CASE 
   WHEN '1' THEN N'非經海關'
   WHEN '2' THEN N'經海關'
   ELSE ""
   END AS "通關方式"
  ,TA015 AS "發票號碼(訖)"
  ,TA016 AS "發票日期"
  ,TA017 AS "發票貨款"
  ,TA018 AS "發票稅額"
  ,TA019 AS "發票作廢"
  ,TA020 AS "預計收款日"
  ,TA021 AS "預計兌現日"
  ,TA022 AS "備註"
  ,TA023 AS "訂單單別"
  ,TA024 AS "訂單單號"
  ,TA025 AS "確認碼"
  ,TA026 AS "更新碼"
  ,TA027 AS "結案碼"
  ,TA028 AS "列印次數"
  ,TA029 AS "應收金額"
  ,TA030 AS "營業稅額"
  ,TA031 AS "已收金額"
  ,TA032 AS "申報年月"
  ,TA033 AS "L/C_NO"
  ,TA034 AS "其他金額"
  ,TA035 AS "專櫃代號"
  ,TA036 AS "INVOICE_NO"
  ,TA037 AS "發票列印次數"
  ,TA038 AS "單據日期"
  ,TA039 AS "確認者"
  ,TA040 AS "營業稅率"
  ,TA041 AS "本幣應收金額"
  ,TA042 AS "本幣營業稅額"
  ,TA043 AS "付款條件代號"
  ,TA044 AS "取得折扣收款日"
  ,TA045 AS "取得折扣兌現日"
  ,TA046 AS "折扣(%)"
  ,TA047 AS "已沖稅額"
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
  ,TA049 AS "更換發票碼"
  ,TA050 AS "新結帳單別"
  ,TA051 AS "新結帳單號"
  ,TA052 AS "流程代號"
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功(來源廠商)'
   WHEN 'y' THEN N'拋轉成功(下游廠商)'
   WHEN 'N' THEN N'未拋轉'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'u' THEN N'還原失敗'
   ELSE ""
   END AS "拋轉狀態"
  ,TA054 AS "傳送次數"
  ,TA055 AS "發票傳送次數"
  ,TA056 AS "開票人"
  ,TA057 AS "發票代號"
  ,TA058 AS "本幣已收金額"
  ,TA059 AS "訂金序號"
  ,TA060 AS "折讓單日期"
  ,CASE 
   WHEN '1' THEN N'CRM'
   ELSE ""
   END AS "來源"
  ,TA065 AS "發票明細"
  ,TA066 AS "稅別碼"
  ,TA067 AS "註記號"
  ,TA068 AS "多發票"
  ,TA069 AS "發票號碼(起)"
  ,TA070 AS "發票張數"
  ,TA071 AS "來源發票張數"
  ,TA072 AS "發票號碼產生方式"
  ,TA073 AS "單身多稅率"
  ,TA074 AS "稅幣匯率"
  ,TA075 AS "作廢日期"
  ,TA076 AS "作廢時間"
  ,TA077 AS "專案作廢核准文號"
  ,TA078 AS "作廢原因"
  ,TA079 AS "底稿編號"
  ,TA080 AS "底稿序號"
  ,TA081 AS "傳票單別"
  ,TA082 AS "傳票單號"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'底稿中'
   WHEN '2' THEN N'傳票中'
   WHEN '3' THEN N'已處理'
   ELSE ""
   END AS "狀態"
  ,TA088 AS "發票彙開"

FROM ACRTA
