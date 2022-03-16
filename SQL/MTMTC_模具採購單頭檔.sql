--MTMTC_模具採購單頭檔
SELECT
  ,TC001 AS "採購單別"
  ,TC002 AS "採購單號"
  ,TC003 AS "採購日期"
  ,TC004 AS "單據日期"
  ,TC005 AS "廠商代號"
  ,CASE 
   WHEN '1' THEN N'新模'
   WHEN '2' THEN N'修模'
   ELSE ""
   END AS "類別"
  ,TC007 AS "發包單別"
  ,TC008 AS "發包單號"
  ,TC009 AS "廠商單號"
  ,TC010 AS "模具編號"
  ,TC011 AS "預交貨日"
  ,TC012 AS "確認預交貨日"
  ,TC013 AS "模具進貨單別"
  ,TC014 AS "模具進貨單號"
  ,CASE 
   WHEN '1' THEN N'一次付清'
   WHEN '2' THEN N'比率分攤'
   WHEN '3' THEN N'分期付款'
   WHEN '4' THEN N'數量分攤'
   ELSE ""
   END AS "付款方式"
  ,TC016 AS "付款天數"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TC018 AS "營業稅率"
  ,TC019 AS "採購幣別"
  ,TC020 AS "匯率"
  ,TC021 AS "預計分攤數量"
  ,TC022 AS "預計分攤金額"
  ,TC023 AS "採購金額"
  ,TC024 AS "公司金額分攤比率"
  ,TC025 AS "廠商金額分攤比率"
  ,TC026 AS "原幣應付未稅金額"
  ,TC027 AS "原幣應付稅額"
  ,TC028 AS "立帳未稅金額"
  ,TC029 AS "應付金額"
  ,TC030 AS "結案碼"
  ,TC031 AS "原幣立帳稅額"
  ,TC032 AS "傳送次數"
  ,TC033 AS "列印"
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
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TC036 AS "確認者"
  ,TC037 AS "備註"
  ,TC043 AS "稅別碼"
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

FROM MTMTC
