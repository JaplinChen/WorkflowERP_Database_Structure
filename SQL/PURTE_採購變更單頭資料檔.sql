--PURTE_採購變更單頭資料檔
SELECT
  ,TE001 AS "採購變更單別"
  ,TE002 AS "採購變更單號"
  ,TE003 AS "版次"
  ,TE004 AS "變更日期"
  ,TE005 AS "供應廠商"
  ,TE006 AS "變更原因"
  ,TE007 AS "交易幣別"
  ,TE008 AS "匯率"
  ,TE009 AS "價格條件"
  ,TE010 AS "付款條件"
  ,TE011 AS "單據日期"
  ,TE012 AS "整張結案"
  ,TE013 AS "新P/I日期"
  ,TE014 AS "新P/I單號"
  ,TE015 AS "新運輸方式"
  ,TE016 AS "列印次數"
  ,TE017 AS "確認碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "新課稅別"
  ,TE019 AS "新送貨地址(一)"
  ,TE020 AS "新送貨地址(二)"
  ,TE021 AS "確認者"
  ,TE022 AS "新營業稅率"
  ,TE023 AS "付款條件代號"
  ,TE024 AS "訂金比率"
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
  ,TE026 AS "傳送次數"
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功(來源廠商)'
   WHEN 'y' THEN N'拋轉成功(下游廠商)'
   WHEN 'N' THEN N'未拋轉'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'u' THEN N'還原失敗'
   ELSE ""
   END AS "拋轉狀態"
  ,TE028 AS "新備註"
  ,TE029 AS "EBC確認碼"
  ,TE030 AS "EBC採購單號"
  ,TE031 AS "EBC採購版次"
  ,TE032 AS "匯至EBC"
  ,TE033 AS "新運輸方式代號"
  ,TE039 AS "稅別碼"
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
  ,TE041 AS "新訂金分批"
  ,TE042 AS "單身多稅率"
  ,TE043 AS "聯絡人"
  ,TE103 AS "原版次"
  ,TE107 AS "原交易幣別"
  ,TE108 AS "原匯率"
  ,TE109 AS "原價格條件"
  ,TE110 AS "原付款條件"
  ,TE113 AS "原P/I日期"
  ,TE114 AS "原P/I單號"
  ,TE115 AS "原運輸方式"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "原課稅別"
  ,TE119 AS "原送貨地址(一)"
  ,TE120 AS "原送貨地址(二)"
  ,TE121 AS "原營業稅率"
  ,TE122 AS "付款條件代號"
  ,TE123 AS "訂金比率"
  ,TE124 AS "原備註"
  ,TE125 AS "原運輸方式代號"
  ,TE139 AS "原稅別碼"
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
  ,TE141 AS "原訂金分批"
  ,TE142 AS "原單身多稅率"
  ,TE143 AS "聯絡人"

FROM PURTE
