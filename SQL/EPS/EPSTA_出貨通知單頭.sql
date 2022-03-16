--EPSTA_出貨通知單頭
SELECT
  ,TA001 AS "通知單別"
  ,TA002 AS "通知單號"
  ,TA003 AS "通知日期"
  ,TA004 AS "客戶代號"
  ,TA005 AS "連絡人"
  ,TA006 AS "部門代號"
  ,TA007 AS "業務人員"
  ,TA008 AS "送貨客戶"
  ,TA009 AS "送貨地址(一)"
  ,TA010 AS "送貨地址(二)"
  ,TA011 AS "文件送達地址(一)"
  ,TA012 AS "文件送達地址(二)"
  ,TA013 AS "發票客戶"
  ,TA014 AS "發票地址(一)"
  ,TA015 AS "發票地址(二)"
  ,TA016 AS "發票日期"
  ,TA017 AS "發票號碼(訖)"
  ,TA018 AS "統一編號"
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
  ,TA021 AS "L/C_NO"
  ,TA022 AS "交易幣別"
  ,TA023 AS "匯率"
  ,TA024 AS "價格條件"
  ,TA025 AS "付款條件"
  ,TA026 AS "銷貨單別"
  ,TA027 AS "銷貨單號"
  ,TA028 AS "嘜頭"
  ,TA029 AS "銷貨金額"
  ,TA030 AS "包裝總數"
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
  ,TA032 AS "更新碼"
  ,TA033 AS "PACKING確認碼"
  ,TA034 AS "確認碼"
  ,TA035 AS "輸出許可證號"
  ,TA036 AS "大提單單號"
  ,TA037 AS "小提單單號"
  ,TA038 AS "NOTIFY"
  ,TA039 AS "ETA"
  ,TA040 AS "ETD"
  ,TA041 AS "出貨廠別"
  ,TA042 AS "INVOICE_NO"
  ,TA043 AS "驗貨公司"
  ,TA044 AS "報關行"
  ,TA045 AS "FORWARDER"
  ,TA046 AS "貨櫃號碼"
  ,TA047 AS "貨櫃尺寸"
  ,TA048 AS "貨櫃場"
  ,TA049 AS "船名"
  ,TA050 AS "船次"
  ,TA051 AS "報單號碼"
  ,TA052 AS "結關日"
  ,TA053 AS "裝貨日"
  ,TA054 AS "裝船日"
  ,TA055 AS "S/I_NO"
  ,TA056 AS "起始港口"
  ,TA057 AS "目的港口"
  ,TA058 AS "目的地"
  ,TA059 AS "海關封簽"
  ,TA060 AS "提單內容"
  ,TA061 AS "保留欄位"
  ,TA062 AS "保留欄位"
  ,TA063 AS "正嘜"
  ,TA064 AS "側嘜"
  ,TA065 AS "PACKING備註"
  ,TA066 AS "INVOICE備註"
  ,TA067 AS "貨盤單位"
  ,TA068 AS "銷貨稅額"
  ,TA069 AS "列印次數"
  ,TA070 AS "單據日期"
  ,TA071 AS "確認者"
  ,TA072 AS "PACKING確認日期"
  ,TA073 AS "PACKING確認者"
  ,TA074 AS "付款條件代號"
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
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "PACKING簽核狀態碼"
  ,TA077 AS "傳送次數"
  ,TA078 AS "流程代號"
  ,TA079 AS "PACKING列印次數"
  ,TA080 AS "PACKING傳送次數"
  ,TA081 AS "INVOICE列印次數"
  ,TA082 AS "INVOICE傳送次數"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"
  ,TA084 AS "正嘜文管代號"
  ,TA085 AS "側嘜文管代號"
  ,TA086 AS "送貨客戶全名"
  ,TA087 AS "TEL_NO"
  ,TA088 AS "FAX_NO"
  ,TA089 AS "外銷方式"
  ,CASE 
   WHEN '1' THEN N'非經海關'
   WHEN '2' THEN N'經海關'
   ELSE ""
   END AS "通關方式"
  ,TA091 AS "證明文件名稱"
  ,TA092 AS "出口報單類別"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "交易條件"
  ,TA094 AS "貨櫃尺寸"
  ,TA096 AS "收入遞延天數"
  ,TA100 AS "CONSIGNEE"
  ,TA101 AS "稅別碼"
  ,TA102 AS "海關手冊"
  ,TA103 AS "不控管信用額度"
  ,CASE 
   WHEN '1' THEN N'製令'
   WHEN '2' THEN N'託外退貨3退貨單'
   WHEN '4' THEN N'領料單'
   ELSE ""
   END AS "來源類別"
  ,TA105 AS "註記號"
  ,TA106 AS "出口港"
  ,TA107 AS "經過港口"
  ,TA108 AS "目的港口"
  ,TA109 AS "多發票"
  ,TA110 AS "發票號碼(起)"
  ,TA111 AS "發票張數"
  ,TA112 AS "單身多稅率"
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功(來源廠商)'
   WHEN 'y' THEN N'拋轉成功(下游廠商)'
   WHEN 'N' THEN N'未拋轉'
   WHEN 'n' THEN N'訂單變更'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'u' THEN N'還原失敗'
   ELSE ""
   END AS "拋轉狀態"
  ,TA114 AS "稅幣匯率"
  ,TA200 AS "Delivery_Address"
  ,TA201 AS "Closing_time_at_VPIC1"
  ,TA202 AS "Express_Account"
  ,TA203 AS "Vessel_No."
  ,TA204 AS "Cont/Seal_No."

FROM EPSTA
