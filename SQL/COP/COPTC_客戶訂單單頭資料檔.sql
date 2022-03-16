--COPTC_客戶訂單單頭資料檔
SELECT
  ,TC001 AS "單別"
  ,TC002 AS "單號"
  ,TC003 AS "訂單日期"
  ,TC004 AS "客戶代號"
  ,TC005 AS "部門代號"
  ,TC006 AS "業務人員"
  ,TC007 AS "出貨廠別"
  ,TC008 AS "交易幣別"
  ,TC009 AS "匯率"
  ,TC010 AS "送貨地址(一)"
  ,TC011 AS "送貨地址(二)"
  ,TC012 AS "客戶單號"
  ,TC013 AS "價格條件"
  ,TC014 AS "付款條件"
  ,TC015 AS "備註"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TC017 AS "L/CNO."
  ,TC018 AS "連絡人"
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
  ,TC020 AS "起始港口"
  ,TC021 AS "目的港口"
  ,TC022 AS "代理商"
  ,TC023 AS "報關行"
  ,TC024 AS "驗貨公司"
  ,TC025 AS "運輸公司"
  ,TC026 AS "佣金比率"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TC028 AS "列印次數"
  ,TC029 AS "訂單金額"
  ,TC030 AS "訂單稅額"
  ,TC031 AS "總數量"
  ,TC032 AS "CONSIGNEE"
  ,TC033 AS "NOTIFY"
  ,TC034 AS "嘜頭代號"
  ,TC035 AS "目的地"
  ,TC036 AS "往來銀行"
  ,TC037 AS "INVOICE備註"
  ,TC038 AS "PACKING-LIST備註"
  ,TC039 AS "單據日期"
  ,TC040 AS "確認者"
  ,TC041 AS "營業稅率"
  ,TC042 AS "付款條件代號"
  ,TC043 AS "總毛重(Kg)"
  ,TC044 AS "總材積(CUFT)"
  ,TC045 AS "訂金比率"
  ,TC046 AS "總包裝數量"
  ,TC047 AS "押匯銀行"
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
  ,TC049 AS "流程代號"
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功(來源廠商)'
   WHEN 'y' THEN N'拋轉成功(下游廠商)'
   WHEN 'N' THEN N'未拋轉'
   WHEN 'n' THEN N'訂單變更'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'u' THEN N'還原失敗'
   ELSE ""
   END AS "拋轉狀態"
  ,TC051 AS "下游廠商"
  ,TC052 AS "傳送次數"
  ,TC053 AS "客戶全名"
  ,TC054 AS "正嘜"
  ,TC055 AS "側嘜"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"
  ,TC057 AS "EBC確認碼"
  ,TC058 AS "EBC訂單號碼"
  ,TC059 AS "EBC訂單版次"
  ,TC060 AS "匯至EBC"
  ,TC061 AS "正嘜文管代號"
  ,TC062 AS "側嘜文管代號"
  ,TC063 AS "發票地址(一)"
  ,TC064 AS "發票地址(二)"
  ,TC065 AS "送貨客戶全名"
  ,TC066 AS "TEL_NO"
  ,TC067 AS "FAX_NO"
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
  ,TC069 AS "版次"
  ,TC070 AS "訂金分批"
  ,TC071 AS "客戶英文全名"
  ,TC077 AS "不控管信用額度"
  ,TC078 AS "稅別碼"
  ,TC079 AS "通路別"
  ,TC080 AS "地區別"
  ,TC081 AS "國家別"
  ,TC082 AS "型態別"
  ,TC083 AS "路線別"
  ,TC084 AS "其他別"
  ,TC085 AS "出口港"
  ,TC086 AS "經過港口"
  ,TC087 AS "目的港口"
  ,TC088 AS "最上游客戶"
  ,TC089 AS "最上游交易幣別"
  ,TC090 AS "最上游稅別碼"
  ,TC091 AS "單身多稅率"
  ,CASE 
   WHEN '1' THEN N'CRM'
   ELSE ""
   END AS "來源"

FROM COPTC
