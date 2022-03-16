--CUSMB_合同品號資訊檔
SELECT
  ,MB001 AS "合同品號"
  ,MB002 AS "品名"
  ,MB003 AS "規格"
  ,MB004 AS "單位"
  ,CASE 
   WHEN 'P' THEN N'採購件,'
   WHEN 'M' THEN N'自製件,'
   WHEN 'S' THEN N'託外加工件'
   ELSE ""
   END AS "品號屬性"
  ,MB006 AS "原產地"
  ,MB007 AS "HS編碼"
  ,MB008 AS "關稅率"
  ,MB009 AS "幣別"
  ,MB010 AS "合同單價"
  ,MB011 AS "備註"
  ,CASE 
   WHEN '1' THEN N'系統轉入'
   WHEN '2' THEN N'自行輸入'
   WHEN '3' THEN N'轉入後修改'
   ELSE ""
   END AS "資料來源"
  ,MB013 AS "合同品號類別代號"
  ,MB014 AS "保稅品"
  ,MB015 AS "別名"
  ,MB016 AS "重量單位"
  ,MB017 AS "單位淨重"

FROM CUSMB
