--IDLME_批號BOM單頭檔
SELECT
  ,ME001 AS "批號"
  ,CASE 
   WHEN '1' THEN N'Creat'
   WHEN '2' THEN N'Spilt'
   WHEN '3' THEN N'Merge'
   WHEN '4' THEN N'Hold'
   WHEN '5' THEN N'結案'
   WHEN 'y' THEN N'指定結案'
   ELSE ""
   END AS "狀態"
  ,ME003 AS "Wafer型號"
  ,ME004 AS "目前製程作業"
  ,ME005 AS "目前供應商"
  ,ME006 AS "最後一次更新日"
  ,CASE 
   WHEN '1' THEN N'人工'
   WHEN '2' THEN N'進貨'
   WHEN '3' THEN N'委工單'
   WHEN '4' THEN N'庫存異動單據'
   WHEN '5' THEN N'Spilt'
   WHEN '6' THEN N'Merge'
   WHEN '7' THEN N'Hold'
   WHEN '8' THEN N'指定結案'
   ELSE ""
   END AS "最後來源"
  ,ME008 AS "最後來源單別"
  ,ME009 AS "母批批號"
  ,ME010 AS "目前產品品號"
  ,ME011 AS "單位"
  ,ME012 AS "數量"
  ,ME013 AS "最早更新日"
  ,CASE 
   WHEN '1' THEN N'人工'
   WHEN '2' THEN N'進貨'
   WHEN '3' THEN N'委工單'
   WHEN '4' THEN N'庫存異動單據'
   WHEN '5' THEN N'Spilt'
   WHEN '6' THEN N'Merge'
   WHEN '7' THEN N'Hold'
   WHEN '8' THEN N'指定結案'
   ELSE ""
   END AS "最早來源"
  ,ME015 AS "最早來源單別"
  ,ME016 AS "最早來源單號"
  ,ME017 AS "最後來源單號"
  ,ME018 AS "目前良率"

FROM IDLME
