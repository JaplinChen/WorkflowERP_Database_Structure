--CUSTW_設備維護單頭檔
SELECT
  ,TW001 AS "設備維護單別"
  ,TW002 AS "設備維護單號"
  ,TW003 AS "設備申請單別"
  ,TW004 AS "設備申請單號"
  ,TW005 AS "設備申請編號"
  ,TW006 AS "申請日期"
  ,TW007 AS "單據日期"
  ,TW008 AS "進口日期"
  ,TW009 AS "到港日期"
  ,TW010 AS "報關單號"
  ,TW011 AS "備註"
  ,TW012 AS "列印次數"
  ,TW013 AS "確認者"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不運行電子簽核'
   ELSE ""
   END AS "簽核狀態碼"
  ,TW015 AS "傳送次數"

FROM CUSTW
