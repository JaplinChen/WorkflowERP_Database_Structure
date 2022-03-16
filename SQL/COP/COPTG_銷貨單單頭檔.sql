--COPTG_銷貨單單頭檔
SELECT
  ,TG001 AS "單別"
  ,TG002 AS "單號"
  ,TG003 AS "銷貨日期"
  ,TG004 AS "客戶代號"
  ,TG005 AS "部門"
  ,TG006 AS "業務員"
  ,TG007 AS "客戶全名"
  ,TG008 AS "送貨地址一"
  ,TG009 AS "送貨地址二"
  ,TG010 AS "出貨廠別"
  ,TG011 AS "幣別"
  ,TG012 AS "匯率"
  ,TG013 AS "原幣銷貨金額"
  ,TG014 AS "發票號碼(訖)"
  ,TG015 AS "統一編號"
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
  ,TG018 AS "發票地址一"
  ,TG019 AS "發票地址二"
  ,TG020 AS "備註"
  ,TG021 AS "發票日期"
  ,TG022 AS "列印次數"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TG024 AS "更新碼"
  ,TG025 AS "原幣銷貨稅額"
  ,TG026 AS "收款業務員"
  ,TG027 AS "備註一"
  ,TG028 AS "備註二"
  ,TG029 AS "備註三"
  ,TG030 AS "發票作廢"
  ,CASE 
   WHEN '1' THEN N'非經海關'
   WHEN '2' THEN N'經海關'
   ELSE ""
   END AS "通關方式"
  ,TG032 AS "件數"
  ,TG033 AS "總數量"
  ,TG034 AS "現銷"
  ,TG035 AS "員工代號"
  ,TG036 AS "產生分錄碼(收入)"
  ,TG037 AS "產生分錄碼(成本)"
  ,TG038 AS "申報年月"
  ,TG039 AS "L/C_NO"
  ,TG040 AS "INVOICE_NO"
  ,TG041 AS "發票列印次數"
  ,TG042 AS "單據日期"
  ,TG043 AS "確認者"
  ,TG044 AS "營業稅率"
  ,TG045 AS "本幣銷貨金額"
  ,TG046 AS "本幣銷貨稅額"
  ,TG047 AS "付款條件代號"
  ,TG048 AS "訂單單別"
  ,TG049 AS "訂單單號"
  ,TG050 AS "預收待抵單別"
  ,TG051 AS "預收待抵單號"
  ,TG052 AS "沖抵金額"
  ,TG053 AS "沖抵稅額"
  ,TG054 AS "總包裝數量"
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
  ,TG056 AS "更換發票碼"
  ,TG057 AS "新銷貨單別"
  ,TG058 AS "新銷貨單號"
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功(來源廠商)'
   WHEN 'y' THEN N'拋轉成功(下游廠商)'
   WHEN 'N' THEN N'未拋轉'
   WHEN 'n' THEN N'訂單變更'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'u' THEN N'還原失敗'
   ELSE ""
   END AS "拋轉狀態"
  ,TG060 AS "流程代號"
  ,TG061 AS "隨貨附發票"
  ,CASE 
   WHEN '0' THEN N'依品號預設'
   WHEN 'Y' THEN N'預設為保稅品'
   WHEN 'N' THEN N'預設為非保稅品'
   ELSE ""
   END AS "保稅碼"
  ,TG063 AS "傳送次數"
  ,TG064 AS "開票人"
  ,TG065 AS "發票代號"
  ,TG066 AS "連絡人"
  ,TG067 AS "代送商代號"
  ,CASE 
   WHEN '1' THEN N'依品號'
   WHEN '2' THEN N'依總金額'
   ELSE ""
   END AS "營站佣金計算方式"
  ,TG069 AS "營站佣金比率"
  ,TG070 AS "佣金計算含稅否"
  ,TG071 AS "佣金總金額"
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
  ,TG073 AS "派車單別"
  ,TG074 AS "派車單號"
  ,TG075 AS "報單號碼"
  ,TG076 AS "送貨客戶全名"
  ,TG077 AS "銷貨單單價別"
  ,TG078 AS "TEL_NO"
  ,TG079 AS "FAX_NO"
  ,TG080 AS "出貨通知單別"
  ,TG081 AS "出貨通知單號"
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
  ,TG083 AS "客戶英文全名"
  ,TG086 AS "發票號碼產生方式"
  ,TG089 AS "不控管信用額度"
  ,TG090 AS "分期結帳"
  ,TG091 AS "期數"
  ,TG092 AS "依期數自動分攤"
  ,TG093 AS "起始年月"
  ,TG094 AS "稅別碼"
  ,TG095 AS "海關手冊"
  ,TG096 AS "註記號"
  ,TG097 AS "多發票"
  ,TG098 AS "發票號碼(起)"
  ,TG099 AS "發票張數"
  ,TG100 AS "單身多稅率"
  ,TG101 AS "稅幣匯率"
  ,TG102 AS "作廢日期"
  ,TG103 AS "作廢時間"
  ,TG104 AS "專案作廢核准文號"
  ,TG105 AS "作廢原因"
  ,CASE 
   WHEN '1' THEN N'CRM'
   ELSE ""
   END AS "來源"

FROM COPTG
