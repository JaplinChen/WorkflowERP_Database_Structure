--MOCTM_加工核價單頭
SELECT
  ,TM001 AS "單別"
  ,TM002 AS "單號"
  ,TM003 AS "核價日期"
  ,TM004 AS "加工廠商"
  ,TM005 AS "幣別"
  ,TM006 AS "含稅"
  ,TM007 AS "備註"
  ,TM008 AS "列印碼"
  ,TM009 AS "確認碼"
  ,TM010 AS "單據日期"
  ,TM011 AS "確認者"
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
  ,TM013 AS "傳送次數"

FROM MOCTM
