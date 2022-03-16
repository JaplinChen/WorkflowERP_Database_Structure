--BCSLA_保稅月統計單頭檔
SELECT
  ,LA001 AS "年月"
  ,LA002 AS "保稅品號"
  ,LA003 AS "保稅進口數量"
  ,LA004 AS "非保稅進口數量"
  ,LA005 AS "廠內領料數量"
  ,LA006 AS "託外領料數量"
  ,LA007 AS "其他領料數量"
  ,LA008 AS "生產退料數量"
  ,LA009 AS "報廢數量"
  ,LA010 AS "出口外銷數量"
  ,LA011 AS "備註"
  ,LA012 AS "內銷數量"
  ,LA013 AS "成品存倉數量"
  ,LA014 AS "成品出倉數量"
  ,LA015 AS "調整(入)數量"
  ,LA016 AS "調整(出)數量"
  ,LA017 AS "保留欄位"
  ,LA018 AS "期初保稅數量"
  ,LA019 AS "期初非保稅數量"
  ,LA020 AS "保稅區內銷數量"
  ,LA021 AS "外運數量"

FROM BCSLA
