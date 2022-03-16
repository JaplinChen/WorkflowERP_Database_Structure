--MRPTA_MRP供需彙總單頭檔
SELECT
  ,TA001 AS "計劃批號"
  ,TA002 AS "品號"
  ,CASE 
   WHEN 'P' THEN N'採購件'
   WHEN 'M' THEN N'自製件'
   WHEN 'S' THEN N'託外加工件'
   ELSE ""
   END AS "品號屬性"
  ,TA004 AS "廠別"
  ,TA005 AS "安全存量"
  ,TA006 AS "備註"
  ,TA007 AS "低階碼"
  ,TA008 AS "庫存數量"
  ,TA009 AS "BOM版次"
  ,TA010 AS "取替代件"
  ,TA011 AS "計劃/採購人員"
  ,TA012 AS "生產交期提前天數"
  ,TA013 AS "採購交期提前天數"
  ,TA014 AS "檢驗天數"

FROM MRPTA
