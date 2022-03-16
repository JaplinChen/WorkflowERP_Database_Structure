--SFCTD_報工單單頭檔
SELECT
  ,TD001 AS "報工單單別"
  ,TD002 AS "報工單單號"
  ,TD003 AS "生產日期"
  ,TD004 AS "生產線別"
  ,TD005 AS "確認碼"
  ,TD006 AS "備註"
  ,TD007 AS "列印次數"
  ,TD008 AS "單據日期"
  ,TD009 AS "確認者"
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
  ,TD011 AS "傳送次數"
  ,TD017 AS "SFT報工單別"
  ,TD018 AS "SFT報工單號"

FROM SFCTD
