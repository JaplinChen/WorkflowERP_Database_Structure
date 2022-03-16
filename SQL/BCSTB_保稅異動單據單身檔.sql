--BCSTB_保稅異動單據單身檔
SELECT
  ,TB001 AS "異動代碼"
  ,TB002 AS "單別"
  ,TB003 AS "單號"
  ,TB004 AS "序號"
  ,TB005 AS "品號"
  ,TB006 AS "數量"
  ,TB007 AS "庫別"
  ,TB008 AS "備註"
  ,TB009 AS "保留欄位"
  ,TB010 AS "已放行數量"
  ,TB011 AS "確認碼"
  ,TB012 AS "單價"
  ,TB013 AS "總價值"
  ,TB014 AS "預估稅額"
  ,TB020 AS "核準文號"
  ,TB021 AS "核准文號生效日"
  ,TB022 AS "保稅碼"

FROM BCSTB
