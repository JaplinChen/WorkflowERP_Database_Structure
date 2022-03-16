--BCSMC_保稅品號基本資料檔
SELECT
  ,MC001 AS "保稅品號"
  ,MC002 AS "品名"
  ,MC003 AS "規格"
  ,MC004 AS "單位"
  ,CASE 
   WHEN '1' THEN N'成品'
   WHEN '2' THEN N'半成品'
   WHEN '3' THEN N'在製品'
   WHEN '4' THEN N'原料('
   WHEN '註' THEN N'M/S->成品,P->原料)'
   WHEN '5' THEN N'物料'
   WHEN '6' THEN N'客供料'
   ELSE ""
   END AS "存貨型態"
  ,MC006 AS "保稅品"
  ,CASE 
   WHEN 'P' THEN N'採購件,'
   WHEN 'M' THEN N'自製件,'
   WHEN 'S' THEN N'託外加工件,'
   WHEN 'Y' THEN N'虛設品號,'
   WHEN 'F' THEN N'Feature件,'
   WHEN 'O' THEN N'Option件'
   ELSE ""
   END AS "品號屬性"
  ,MC008 AS "原產地"
  ,MC009 AS "稅則"
  ,MC010 AS "盤差容許率"
  ,MC011 AS "關稅率"
  ,MC012 AS "保稅單價"
  ,MC013 AS "備註"
  ,CASE 
   WHEN '1' THEN N'系統轉入'
   WHEN '2' THEN N'自行輸入'
   WHEN '3' THEN N'轉入後修改'
   ELSE ""
   END AS "資料來源"
  ,MC015 AS "保稅庫存數量"
  ,MC016 AS "保留欄位"
  ,MC017 AS "保稅生效日期"
  ,MC018 AS "不列入結算"
  ,MC019 AS "關稅來源報單"
  ,MC020 AS "低階碼"
  ,MC021 AS "開帳日期"
  ,MC022 AS "開帳碼"

FROM BCSMC
