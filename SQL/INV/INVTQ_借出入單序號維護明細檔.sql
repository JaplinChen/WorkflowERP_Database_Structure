--INVTQ_借出入單序號維護明細檔
SELECT
  ,TQ001 AS "借出入單別"
  ,TQ002 AS "借出入單號"
  ,TQ003 AS "序號"
  ,TQ004 AS "產品序號起始編號"
  ,TQ005 AS "產品序號迄止編號"
  ,TQ006 AS "數量"
  ,TQ007 AS "備註"
  ,TQ008 AS "序號前置碼"
  ,TQ009 AS "序號流水號碼數"
  ,TQ010 AS "序號編碼原則"
  ,TQ011 AS "品號"

FROM INVTQ
