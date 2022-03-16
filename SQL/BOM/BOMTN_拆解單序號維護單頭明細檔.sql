--BOMTN_拆解單序號維護單頭明細檔
SELECT
  ,TN001 AS "拆解單別"
  ,TN002 AS "拆解單號"
  ,TN003 AS "產品序號起始編號"
  ,TN004 AS "產品序號迄止編號"
  ,TN005 AS "數量"
  ,TN006 AS "備註"
  ,TN007 AS "序號前置碼"
  ,TN008 AS "序號流水號碼數"
  ,TN009 AS "序號編碼原則"
  ,TN010 AS "品號"

FROM BOMTN
