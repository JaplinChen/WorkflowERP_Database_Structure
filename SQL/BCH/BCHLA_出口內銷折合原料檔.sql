--BCHLA_出口內銷折合原料檔
SELECT
  ,LA001 AS "年月"
  ,LA002 AS "保稅主件品號"
  ,LA003 AS "保稅元件品號"
  ,LA004 AS "出口折合數量"
  ,LA005 AS "內銷折合數量"
  ,LA006 AS "報廢折合數量"
  ,LA007 AS "保稅區內銷折合數量"
  ,LA008 AS "保稅BOM編號"
  ,LA009 AS "保稅主件品號生效日期"
  ,LA010 AS "保稅材料用量清單核准文號"
  ,LA011 AS "外運折合數量"

FROM BCHLA
