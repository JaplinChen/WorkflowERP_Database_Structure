--INVTP_異動單序號維護明細檔
SELECT
  ,TP001 AS "庫存異動單別"
  ,TP002 AS "庫存異動單號"
  ,TP003 AS "序號"
  ,TP004 AS "產品序號起始編號"
  ,TP005 AS "產品序號迄止編號"
  ,TP006 AS "數量"
  ,TP007 AS "備註"
  ,TP008 AS "序號前置碼"
  ,TP009 AS "序號流水號碼數"
  ,TP010 AS "序號編碼原則"
  ,TP011 AS "品號"

FROM INVTP
