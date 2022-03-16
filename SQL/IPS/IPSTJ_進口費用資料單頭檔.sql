--IPSTJ_進口費用資料單頭檔
SELECT
  ,TJ001 AS "進口費用單別"
  ,TJ002 AS "進口費用單號"
  ,TJ003 AS "進口費用日期"
  ,TJ004 AS "廠商代號"
  ,TJ005 AS "隱藏欄位"
  ,TJ006 AS "隱藏欄位"
  ,TJ007 AS "廠別代號"
  ,TJ008 AS "交易幣別"
  ,TJ009 AS "匯率"
  ,TJ010 AS "隱藏欄位"
  ,TJ011 AS "隱藏欄位"
  ,TJ012 AS "原幣費用金額"
  ,TJ013 AS "原幣營業稅額"
  ,TJ014 AS "確認碼"
  ,TJ015 AS "備註"
  ,TJ016 AS "列印次數"
  ,TJ017 AS "單據日期"
  ,TJ018 AS "確認者"
  ,CASE 
   WHEN '1' THEN N'依進貨金額'
   WHEN '2' THEN N'依進貨數量'
   WHEN '3' THEN N'依毛重'
   WHEN '4' THEN N'依材積'
   WHEN '5' THEN N'依實際值'
   ELSE ""
   END AS "費用分攤方式"
  ,TJ020 AS "本幣費用金額"
  ,TJ021 AS "本幣營業稅額"
  ,TJ022 AS "付款條件代號"
  ,TJ023 AS "隱藏欄位"
  ,TJ024 AS "隱藏欄位"
  ,TJ025 AS "隱藏欄位"
  ,TJ026 AS "隱藏欄位"
  ,TJ027 AS "隱藏欄位"
  ,TJ028 AS "隱藏欄位"
  ,TJ029 AS "成本金額合計"
  ,TJ030 AS "隱藏欄位"
  ,TJ031 AS "費用金額合計"
  ,TJ032 AS "單身進貨數量合計"
  ,TJ033 AS "單身進貨金額合計"
  ,TJ034 AS "單身毛重合計"
  ,TJ035 AS "單身材積合計"
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
  ,TJ037 AS "傳送次數"
  ,TJ038 AS "原幣成本金額"
  ,TJ039 AS "原幣成本稅額"
  ,TJ040 AS "本幣成本金額"
  ,TJ041 AS "本幣成本稅額"
  ,TJ042 AS "單身成本金額"
  ,TJ043 AS "隱藏欄位"
  ,TJ049 AS "註記號"
  ,TJ050 AS "稅幣匯率"
  ,TJ051 AS "發票註記碼長度"
  ,TJ052 AS "發票流水碼長度"

FROM IPSTJ
