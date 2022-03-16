--BCSLC_出口內銷折合原料檔
SELECT
  ,LC001 AS "年月"
  ,LC002 AS "保稅主件品號"
  ,LC003 AS "保稅元件品號"
  ,LC004 AS "出口折合數量"
  ,LC005 AS "內銷折合數量"
  ,LC006 AS "報廢折合數量"
  ,LC007 AS "保稅區內銷折合數量"
  ,LC008 AS "保稅主件品號生效日期"
  ,LC009 AS "保稅材料用量清單核准文號"

FROM BCSLC
