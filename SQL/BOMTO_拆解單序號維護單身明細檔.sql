--BOMTO_拆解單序號維護單身明細檔
SELECT
  ,TO001 AS "拆解單別"
  ,TO002 AS "拆解單號"
  ,TO003 AS "序號"
  ,TO004 AS "產品序號起始編號"
  ,TO005 AS "產品序號迄止編號"
  ,TO006 AS "數量"
  ,TO007 AS "備註"
  ,TO008 AS "序號前置碼"
  ,TO009 AS "序號流水號碼數"
  ,TO010 AS "序號編碼原則"
  ,TO011 AS "品號"

FROM BOMTO
