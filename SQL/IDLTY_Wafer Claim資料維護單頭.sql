--IDLTY_Wafer Claim資料維護單頭
SELECT
  ,TY001 AS "Claim單別"
  ,TY002 AS "Claim單號"
  ,TY003 AS "單據日期"
  ,TY004 AS "廠商代號"
  ,TY005 AS "備註"
  ,TY011 AS "製造廠商"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
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
  ,TY014 AS "列印次數"
  ,TY015 AS "傳送次數"
  ,TY016 AS "確認者"
  ,TY017 AS "確認日期"
  ,TY018 AS "運輸方式代號"

FROM IDLTY
