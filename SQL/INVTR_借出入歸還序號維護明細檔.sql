--INVTR_借出入歸還序號維護明細檔
SELECT
  ,TR001 AS "歸還單別"
  ,TR002 AS "歸還單號"
  ,TR003 AS "序號"
  ,TR004 AS "產品序號起始編號"
  ,TR005 AS "產品序號迄止編號"
  ,TR006 AS "數量"
  ,TR007 AS "備註"
  ,TR008 AS "序號前置碼"
  ,TR009 AS "序號流水號碼數"
  ,TR010 AS "序號編碼原則"
  ,TR011 AS "品號"

FROM INVTR
