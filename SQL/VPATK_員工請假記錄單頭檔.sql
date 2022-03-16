--VPATK_員工請假記錄單頭檔
SELECT
  ,TK001 AS "員工代號"
  ,TK002 AS "年度"
  ,TK003 AS "年假數量"
  ,TK004 AS "年假已休數量"
  ,TK005 AS "補休數量"
  ,TK006 AS "補休已休數量"
  ,TK007 AS "年假時數"
  ,TK008 AS "年假已休時數"
  ,TK200 AS "預支數量"

FROM VPATK
