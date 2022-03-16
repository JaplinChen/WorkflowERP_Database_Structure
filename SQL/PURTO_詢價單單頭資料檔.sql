--PURTO_詢價單單頭資料檔
SELECT
  ,TO001 AS "請購單別"
  ,TO002 AS "請購單號"
  ,TO003 AS "供應廠商"
  ,TO004 AS "單據日期"
  ,TO005 AS "詢價日期"
  ,TO006 AS "備註"
  ,TO007 AS "確認碼"
  ,TO008 AS "列印次數"
  ,TO009 AS "確認者"
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
  ,TO011 AS "傳送次數"
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
  ,TO018 AS "單身多稅率"

FROM PURTO
