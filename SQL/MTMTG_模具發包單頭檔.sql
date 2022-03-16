--MTMTG_模具發包單頭檔
SELECT
  ,TG001 AS "發包單別"
  ,TG002 AS "發包單號"
  ,TG003 AS "發包日期"
  ,CASE 
   WHEN '1' THEN N'一次付清'
   WHEN '2' THEN N'比率分攤'
   WHEN '3' THEN N'分期付款'
   WHEN '4' THEN N'數量分攤'
   ELSE ""
   END AS "付款方式"
  ,TG005 AS "幣別"
  ,TG006 AS "匯率"
  ,TG007 AS "得標廠商"
  ,TG008 AS "得標金額(未稅)"
  ,TG009 AS "採購單別"
  ,TG010 AS "採購單號"
  ,TG011 AS "模具編號"
  ,CASE 
   WHEN '1' THEN N'新模'
   WHEN '2' THEN N'舊模'
   ELSE ""
   END AS "類別"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TG014 AS "確認者"
  ,TG015 AS "單據日期"
  ,TG016 AS "備註"
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
  ,TG018 AS "列印碼"
  ,TG019 AS "傳送次數"
  ,CASE 
   WHEN '1' THEN N'發包中'
   WHEN '2' THEN N'報價中'
   WHEN '3' THEN N'議價中'
   WHEN '4' THEN N'已決標'
   WHEN '5' THEN N'已採購'
   ELSE ""
   END AS "狀態碼"
  ,TG021 AS "得標金額(含稅)"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TG023 AS "營業稅率"
  ,TG024 AS "得標稅額"
  ,TG030 AS "稅別碼"
  ,CASE 
   WHEN '0' THEN N'保修中'
   WHEN '1' THEN N'閒置'
   WHEN '2' THEN N'使用中'
   WHEN '3' THEN N'報廢'
   WHEN '4' THEN N'故障'
   WHEN '5' THEN N'新模採購'
   WHEN '6' THEN N'出售'
   ELSE ""
   END AS "修模前狀態碼"

FROM MTMTG
