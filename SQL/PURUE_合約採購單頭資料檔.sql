--PURUE_合約採購單頭資料檔
SELECT
  ,UE001 AS "合約單別"
  ,UE002 AS "合約單號"
  ,UE003 AS "合約日期"
  ,UE004 AS "供應廠商"
  ,UE005 AS "有效起始日期"
  ,UE006 AS "有效截止日期"
  ,UE007 AS "合約號碼"
  ,UE008 AS "交易幣別"
  ,UE009 AS "匯率"
  ,UE010 AS "價格條件"
  ,UE011 AS "備註"
  ,UE012 AS "廠別"
  ,UE013 AS "採購人員"
  ,UE014 AS "列印格式"
  ,UE015 AS "列印次數"
  ,UE016 AS "確認碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,UE018 AS "合約金額"
  ,UE019 AS "合約稅額"
  ,CASE 
   WHEN '1' THEN N'依數量'
   WHEN '2' THEN N'依金額'
   ELSE ""
   END AS "結案認定"
  ,UE021 AS "送貨地址(一)"
  ,UE022 AS "送貨地址(二)"
  ,UE023 AS "數量合計"
  ,UE024 AS "單據日期"
  ,UE025 AS "確認者"
  ,UE026 AS "營業稅率"
  ,UE027 AS "付款條件代號"
  ,UE028 AS "訂金比率"
  ,UE029 AS "包裝數量合計"
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
  ,UE031 AS "傳送次數"
  ,UE032 AS "版次"
  ,UE033 AS "運輸方式代號"
  ,UE034 AS "稅別碼"
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
  ,UE041 AS "製造廠商"
  ,UE042 AS "單身多稅率"
  ,UE043 AS "聯絡人"

FROM PURUE
