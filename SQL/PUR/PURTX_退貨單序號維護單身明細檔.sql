--PURTX_退貨單序號維護單身明細檔
SELECT
  ,TX001 AS "退貨單別"
  ,TX002 AS "退貨單號"
  ,TX003 AS "序號"
  ,TX004 AS "產品序號起始編號"
  ,TX005 AS "產品序號迄止編號"
  ,TX006 AS "數量"
  ,TX007 AS "備註"
  ,TX008 AS "序號前置碼"
  ,TX009 AS "序號流水號碼數"
  ,TX010 AS "序號編碼原則"
  ,TX011 AS "品號"

FROM PURTX
