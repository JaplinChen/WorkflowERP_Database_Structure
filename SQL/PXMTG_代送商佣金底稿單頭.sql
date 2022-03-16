--PXMTG_代送商佣金底稿單頭
SELECT
  ,TG001 AS "佣金年月"
  ,TG002 AS "代送商代號"
  ,CASE 
   WHEN '1' THEN N'依回籠單'
   WHEN '2' THEN N'依銷貨銷退單'
   ELSE ""
   END AS "佣金計算依據"
  ,TG004 AS "佣金比率"
  ,TG005 AS "回籠單金額"
  ,TG006 AS "銷貨淨額"
  ,TG007 AS "自結銷貨金額"
  ,TG008 AS "自結進貨金額"
  ,TG009 AS "佣金金額"
  ,TG010 AS "未稅佣金金額"
  ,TG011 AS "佣金稅額"
  ,TG012 AS "佣金調整額"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'普通發票'
   WHEN 'C' THEN N'免用發票'
   ELSE ""
   END AS "發票聯數"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TG015 AS "應付憑單單別"
  ,TG016 AS "應付憑單單號"
  ,TG017 AS "確認碼"
  ,TG018 AS "確認者"
  ,TG019 AS "確認日期"
  ,TG020 AS "發票號碼"
  ,TG021 AS "統一編號"
  ,TG022 AS "發票日期"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TG024 AS "菸酒註記"
  ,TG025 AS "申報年月"
  ,TG026 AS "營業稅率"
  ,TG027 AS "廠商全名"
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
  ,TG034 AS "稅別碼"
  ,TG035 AS "註記號"

FROM PXMTG
