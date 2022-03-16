--COPTE_訂單變更單頭資料檔
SELECT
  ,TE001 AS "單別"
  ,TE002 AS "單號"
  ,TE003 AS "變更版次"
  ,TE004 AS "變更日期"
  ,TE005 AS "整張結案"
  ,TE006 AS "變更原因"
  ,TE007 AS "客戶代號"
  ,TE008 AS "新部門代號"
  ,TE009 AS "新業務人員"
  ,TE010 AS "新出貨廠別"
  ,TE011 AS "新交易幣別"
  ,TE012 AS "新匯率"
  ,TE013 AS "新送貨地址(一)"
  ,TE014 AS "新送貨地址(二)"
  ,TE015 AS "新客戶單號"
  ,TE016 AS "新價格條件"
  ,TE017 AS "新付款條件"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TE019 AS "新L/CNO."
  ,TE020 AS "新連絡人"
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
   END AS "新運輸方式"
  ,TE022 AS "新起始港口"
  ,TE023 AS "新目的港口"
  ,TE024 AS "新代理商"
  ,TE025 AS "新報關行"
  ,TE026 AS "新驗貨公司"
  ,TE027 AS "新運輸公司"
  ,TE028 AS "新佣金比率"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TE030 AS "列印次數"
  ,TE031 AS "CONSIGNEE"
  ,TE032 AS "NOTIFY"
  ,TE033 AS "嘜頭代號"
  ,TE034 AS "目的地"
  ,TE035 AS "往來銀行"
  ,TE036 AS "INVOICE備註"
  ,TE037 AS "PACKING-LIST備註"
  ,TE038 AS "單據日期"
  ,TE039 AS "確認者"
  ,TE040 AS "新營業稅率"
  ,TE041 AS "付款條件代號"
  ,TE042 AS "訂金比率"
  ,TE043 AS "押匯銀行"
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
   WHEN 'Y' THEN N'拋轉成功(來源廠商)'
   WHEN 'y' THEN N'拋轉成功(下游廠商)'
   WHEN 'N' THEN N'未拋轉'
   WHEN 'n' THEN N'訂單變更'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'u' THEN N'還原失敗'
   ELSE ""
   END AS "拋轉狀態"
  ,TE046 AS "傳送次數"
  ,TE047 AS "正嘜"
  ,TE048 AS "側嘜"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"
  ,TE050 AS "新備註"
  ,TE051 AS "EBC確認碼"
  ,TE052 AS "EBC訂單號碼"
  ,TE053 AS "EBC訂單版次"
  ,TE054 AS "匯至EBC"
  ,TE055 AS "新客戶全名"
  ,TE056 AS "新發票地址(一)"
  ,TE057 AS "新發票地址(二)"
  ,TE058 AS "新送貨客戶全名"
  ,TE059 AS "新TEL_NO"
  ,TE060 AS "新FAX_NO"
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
  ,TE062 AS "客戶英文全名"
  ,TE064 AS "收入遞延天數"
  ,TE068 AS "不控管信用額度"
  ,TE069 AS "稅別碼"
  ,TE070 AS "新通路別"
  ,TE071 AS "新地區別"
  ,TE072 AS "新國家別"
  ,TE073 AS "新型態別"
  ,TE074 AS "新路線別"
  ,TE075 AS "新其他別"
  ,TE076 AS "新出口港"
  ,TE077 AS "新經過港口"
  ,TE078 AS "新目的港口"
  ,TE079 AS "新訂金分批"
  ,TE080 AS "新單身多稅率"
  ,CASE 
   WHEN '1' THEN N'CRM'
   ELSE ""
   END AS "來源"
  ,TE103 AS "原版次"
  ,TE107 AS "原客戶代號"
  ,TE108 AS "原部門代號"
  ,TE109 AS "原業務人員"
  ,TE110 AS "原出貨廠別"
  ,TE111 AS "原交易幣別"
  ,TE112 AS "原匯率"
  ,TE113 AS "原送貨地址(一)"
  ,TE114 AS "原送貨地址(二)"
  ,TE115 AS "原客戶單號"
  ,TE116 AS "原價格條件"
  ,TE117 AS "原付款條件"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TE119 AS "原L/CNO."
  ,TE120 AS "原連絡人"
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
   END AS "原運輸方式"
  ,TE122 AS "原起始港口"
  ,TE123 AS "原目的港口"
  ,TE124 AS "原代理商"
  ,TE125 AS "原報關行"
  ,TE126 AS "原驗貨公司"
  ,TE127 AS "原運輸公司"
  ,TE128 AS "原佣金比率"
  ,TE129 AS "原CONSIGNEE"
  ,TE130 AS "原NOTIFY"
  ,TE131 AS "原嘜頭代號"
  ,TE132 AS "原目的地"
  ,TE133 AS "原往來銀行"
  ,TE134 AS "原INVOICE備註"
  ,TE135 AS "原PACKING-LIST備註"
  ,TE136 AS "原營業稅率"
  ,TE137 AS "原付款條件代號"
  ,TE138 AS "原訂金比率"
  ,TE139 AS "原押匯銀行"
  ,TE141 AS "原正嘜"
  ,TE142 AS "原側嘜"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "原材積單位"
  ,TE144 AS "原備註"
  ,TE145 AS "原客戶全名"
  ,TE146 AS "原發票地址(一)"
  ,TE147 AS "原發票地址(二)"
  ,TE148 AS "原送貨客戶全名"
  ,TE149 AS "原TEL_NO"
  ,TE150 AS "原FAX_NO"
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
   END AS "原交易條件"
  ,TE152 AS "原客戶英文全名"
  ,TE164 AS "原收入遞延天數"
  ,TE168 AS "原不控管信用額度"
  ,TE169 AS "原稅別碼"
  ,TE170 AS "原通路別"
  ,TE171 AS "原地區別"
  ,TE172 AS "原國家別"
  ,TE173 AS "原型態別"
  ,TE174 AS "原路線別"
  ,TE175 AS "原其他別"
  ,TE176 AS "原出口港"
  ,TE177 AS "原經過港口"
  ,TE178 AS "原目的港口"
  ,TE179 AS "原訂金分批"
  ,TE180 AS "原單身多稅率"

FROM COPTE
