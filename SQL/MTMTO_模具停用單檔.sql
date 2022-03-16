--MTMTO_模具停用單檔
SELECT
  ,TO001 AS "單別"
  ,TO002 AS "單號"
  ,TO003 AS "單據日期"
  ,TO004 AS "人員"
  ,TO005 AS "模具編號"
  ,CASE 
   WHEN '0' THEN N'保修中'
   WHEN '1' THEN N'閒置'
   WHEN '2' THEN N'使用中'
   WHEN '3' THEN N'報廢'
   WHEN '4' THEN N'故障'
   WHEN '5' THEN N'新模採購'
   WHEN '6' THEN N'出售停用'
   ELSE ""
   END AS "狀態碼"
  ,TO007 AS "備註"
  ,TO008 AS "停用日期"
  ,TO009 AS "確認者"
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
   END AS "簽核狀態"
  ,TO012 AS "傳送次數"
  ,TO013 AS "列印次數"
  ,CASE 
   WHEN '1' THEN N'報廢'
   WHEN '2' THEN N'出售停用'
   ELSE ""
   END AS "停用原因"

FROM MTMTO
