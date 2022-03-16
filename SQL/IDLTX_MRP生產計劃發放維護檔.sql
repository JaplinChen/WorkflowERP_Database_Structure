--IDLTX_MRP生產計劃發放維護檔
SELECT
  ,TX001 AS "計劃批號"
  ,TX002 AS "品號"
  ,TX003 AS "時距日期"
  ,TX004 AS "序號"
  ,TX006 AS "需領用量"
  ,TX007 AS "單位"
  ,TX008 AS "刻號"
  ,TX009 AS "等級代號BIN"
  ,TX010 AS "庫別"
  ,TX011 AS "批號"
  ,TX012 AS "DATECODE"
  ,TX013 AS "庫存量"
  ,TX014 AS "儲位"
  ,TX020 AS "主件品號"
  ,TX021 AS "主件時距日期"
  ,TX022 AS "入庫批號"
  ,TX023 AS "入庫DATECODE"
  ,TX024 AS "刻號/BIN記錄"
  ,TX025 AS "刻號管理"

FROM IDLTX
