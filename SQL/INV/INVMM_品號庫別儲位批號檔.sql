--INVMM_品號庫別儲位批號檔
SELECT
  ,MM001 AS "品號"
  ,MM002 AS "庫別"
  ,MM003 AS "儲位"
  ,MM004 AS "批號"
  ,MM005 AS "庫存數量"
  ,MM006 AS "庫存包裝數量"
  ,MM007 AS "上次盤點日"
  ,MM008 AS "最近入庫日"
  ,MM009 AS "最近出庫日"
  ,MM010 AS "備註"

FROM INVMM
