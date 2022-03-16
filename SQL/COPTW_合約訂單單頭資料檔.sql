--COPTW_合約訂單單頭資料檔
SELECT
  ,TW001 AS "單別"
  ,TW002 AS "單號"
  ,TW003 AS "合約日期"
  ,TW004 AS "單據日期"
  ,TW005 AS "客戶代號"
  ,TW006 AS "有效起始日期"
  ,TW007 AS "有效截止日期"
  ,TW008 AS "合約號碼"
  ,TW009 AS "部門代號"
  ,TW010 AS "業務人員"
  ,TW011 AS "出貨廠別"
  ,TW012 AS "交易幣別"
  ,TW013 AS "匯率"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TW015 AS "營業稅率"
  ,TW016 AS "價格條件"
  ,TW018 AS "後置單據可修改單價"
  ,TW019 AS "客戶單號"
  ,TW020 AS "備註"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TW022 AS "確認者"
  ,TW023 AS "連絡人"
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
  ,TW025 AS "客戶全名"
  ,TW026 AS "發票地址(一)"
  ,TW027 AS "發票地址(二)"
  ,TW028 AS "送貨客戶全名"
  ,TW029 AS "送貨地址(一)"
  ,TW030 AS "送貨地址(二)"
  ,TW031 AS "TEL_NO"
  ,TW032 AS "FAX_NO"
  ,TW033 AS "列印次數"
  ,TW034 AS "整張結案"
  ,TW035 AS "總數量"
  ,TW036 AS "合約金額"
  ,TW037 AS "合約稅額"
  ,CASE 
   WHEN '1' THEN N'依數量'
   WHEN '2' THEN N'依金額'
   ELSE ""
   END AS "結案認定"
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
  ,TW040 AS "付款條件代號"
  ,TW041 AS "總毛重(Kg)"
  ,TW042 AS "總材積"
  ,TW043 AS "總包裝數量"
  ,TW044 AS "傳送次數"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"
  ,TW046 AS "版次"
  ,TW052 AS "稅別碼"
  ,TW053 AS "光罩費用合計"
  ,TW054 AS "單身多稅率"

FROM COPTW
