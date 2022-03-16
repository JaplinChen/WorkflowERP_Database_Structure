--MRPTB_MRP供需彙總單身檔
SELECT
  ,TB001 AS "計劃批號"
  ,TB002 AS "品號"
  ,TB003 AS "時距日期"
  ,TB004 AS "開單日"
  ,TB005 AS "實際供需日期"
  ,TB006 AS "期初存量"
  ,TB007 AS "預計生產"
  ,TB008 AS "預計請購"
  ,TB009 AS "預計進貨"
  ,TB010 AS "計劃生產"
  ,TB011 AS "計劃採購"
  ,TB012 AS "被替代"
  ,TB013 AS "重排增加"
  ,TB014 AS "預計銷售"
  ,TB015 AS "預計領用"
  ,TB016 AS "計劃銷售"
  ,TB017 AS "計劃領用"
  ,TB018 AS "替代他料"
  ,TB019 AS "重排減少"
  ,TB020 AS "預計可用"
  ,TB021 AS "庫別"
  ,TB022 AS "採購/生產數"
  ,TB023 AS "採購單位"
  ,TB024 AS "製令別"
  ,TB025 AS "線別/廠商"
  ,TB026 AS "線別/廠商名稱"
  ,TB027 AS "幣別"
  ,TB028 AS "單價"
  ,TB029 AS "發放碼"
  ,TB030 AS "備註"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TB032 AS "製造商"
  ,TB033 AS "承認型號"
  ,TB034 AS "請拋採未確認"

FROM MRPTB
