--EPSTL_出貨通知單身序號維護檔
SELECT
  ,MA001 AS "資產類別代號"
  ,MA002 AS "資產類別名稱"
  ,MA003 AS "資產科目"
  ,MA004 AS "累計折舊科目"
  ,MA005 AS "折舊科目"
  ,CASE 
   WHEN '0' THEN N'不提折舊'
   WHEN '1' THEN N'平均法'
   WHEN '2' THEN N'定率遞減法'
   ELSE ""
   END AS "折舊方法"
  ,TL001 AS "通知單別"
  ,TL002 AS "通知單號"
  ,TL003 AS "序號"
  ,TL004 AS "產品序號起始編號"
  ,TL005 AS "產品序號迄止編號"
  ,TL006 AS "數量"
  ,TL007 AS "備註"
  ,TL008 AS "序號前置碼"
  ,TL009 AS "序號流水號碼數"
  ,TL010 AS "序號編碼原則"
  ,TL011 AS "品號"

FROM EPSTL
