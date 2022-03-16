--PURTC_採購單單頭資料檔
SELECT
  ,TC001 AS "採購單別"
  ,TC002 AS "採購單號"
  ,TC003 AS "採購日期"
  ,TC004 AS "供應廠商"
  ,TC005 AS "交易幣別"
  ,TC006 AS "匯率"
  ,TC007 AS "價格條件"
  ,TC008 AS "付款條件"
  ,TC009 AS "備註"
  ,TC010 AS "廠別"
  ,TC011 AS "採購人員"
  ,TC012 AS "列印格式"
  ,TC013 AS "列印次數"
  ,TC014 AS "確認碼"
  ,TC015 AS "P/I日期"
  ,TC016 AS "P/I單號"
  ,TC017 AS "運輸方式"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TC019 AS "採購金額"
  ,TC020 AS "稅額"
  ,TC021 AS "送貨地址(一)"
  ,TC022 AS "送貨地址(二)"
  ,TC023 AS "數量合計"
  ,TC024 AS "單據日期"
  ,TC025 AS "確認者"
  ,TC026 AS "營業稅率"
  ,TC027 AS "付款條件代號"
  ,TC028 AS "訂金比率"
  ,TC029 AS "包裝數量合計"
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
  ,TC031 AS "傳送次數"
  ,TC032 AS "流程代號"
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功(來源廠商)'
   WHEN 'y' THEN N'拋轉成功(下游廠商)'
   WHEN 'N' THEN N'未拋轉'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'u' THEN N'還原失敗'
   ELSE ""
   END AS "拋轉狀態"
  ,TC034 AS "下游廠商"
  ,TC035 AS "EBC確認碼"
  ,TC036 AS "EBC採購單號"
  ,TC037 AS "EBC採購版次"
  ,TC038 AS "匯至EBC"
  ,TC039 AS "版次"
  ,TC040 AS "訂金分批"
  ,TC041 AS "運輸方式代號"
  ,TC047 AS "稅別碼"
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
  ,TC049 AS "製造廠商"
  ,TC050 AS "鎖定碼"
  ,TC051 AS "單身多稅率"
  ,TC052 AS "聯絡人"
  ,TC500 AS "備註說明A"
  ,TC501 AS "備註說明B"
  ,TC502 AS "備註說明C"
  ,TC503 AS "備註說明D"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"

FROM PURTC
