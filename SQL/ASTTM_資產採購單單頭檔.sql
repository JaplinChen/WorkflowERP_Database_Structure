--ASTTM_資產採購單單頭檔
SELECT
  ,TM001 AS "採購單別"
  ,TM002 AS "採購單號"
  ,TM003 AS "採購日期"
  ,TM004 AS "單據日期"
  ,TM005 AS "供應廠商"
  ,TM006 AS "交易幣別"
  ,TM007 AS "匯率"
  ,TM008 AS "價格條件"
  ,TM009 AS "付款條件代號"
  ,TM010 AS "備註"
  ,TM011 AS "廠別"
  ,TM012 AS "採購人員"
  ,TM013 AS "列印格式"
  ,TM014 AS "列印次數"
  ,TM015 AS "確認碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TM017 AS "營業稅率"
  ,TM018 AS "採購金額"
  ,TM019 AS "稅額"
  ,TM020 AS "送貨地址(一)"
  ,TM021 AS "送貨地址(二)"
  ,TM022 AS "數量合計"
  ,TM023 AS "確認者"
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
  ,TM025 AS "訂金比率"
  ,TM026 AS "傳送次數"
  ,TM027 AS "版次"
  ,TM033 AS "稅別碼"
  ,TM034 AS "聯絡人"

FROM ASTTM
