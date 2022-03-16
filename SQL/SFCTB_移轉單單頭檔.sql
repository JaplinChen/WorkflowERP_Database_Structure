--SFCTB_移轉單單頭檔
SELECT
  ,TB001 AS "移轉單單別"
  ,TB002 AS "移轉單單號"
  ,TB003 AS "移轉日期"
  ,TB004 AS "移出類別"
  ,TB005 AS "移出部門"
  ,TB006 AS "移出部門名稱"
  ,TB007 AS "移入類別"
  ,TB008 AS "移入部門"
  ,TB009 AS "移入部門名稱"
  ,TB010 AS "廠別代號"
  ,TB011 AS "列印次數"
  ,TB012 AS "更新碼"
  ,TB013 AS "確認碼"
  ,TB014 AS "備註"
  ,TB015 AS "單據日期"
  ,TB016 AS "確認者"
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
  ,TB018 AS "統一編號"
  ,TB019 AS "發票聯數"
  ,TB020 AS "發票日期"
  ,TB021 AS "發票號碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TB024 AS "保留欄位"
  ,TB025 AS "申報年月"
  ,TB026 AS "營業稅率"
  ,TB027 AS "傳送次數"
  ,TB028 AS "廠商單號"
  ,CASE 
   WHEN '0' THEN N'依品號預設'
   WHEN 'Y' THEN N'預設為保稅品'
   WHEN 'N' THEN N'預設為非保稅品'
   ELSE ""
   END AS "保稅碼"
  ,TB034 AS "稅別碼"
  ,TB035 AS "註記號"
  ,TB036 AS "幣別"
  ,TB037 AS "匯率"
  ,TB038 AS "SFT移轉單別"
  ,TB039 AS "SFT移轉單號"

FROM SFCTB
