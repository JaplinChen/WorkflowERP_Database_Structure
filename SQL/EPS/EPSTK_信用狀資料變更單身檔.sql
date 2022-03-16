--EPSTK_信用狀資料變更單身檔
SELECT
  ,TK001 AS "信用狀號"
  ,TK002 AS "變更版次"
  ,TK003 AS "新序號"
  ,TK004 AS "新訂單單別"
  ,TK005 AS "新訂單單號"
  ,TK006 AS "新訂單金額"
  ,TK007 AS "確認碼"
  ,TK008 AS "變更原因"
  ,TK009 AS "備註"
  ,TK103 AS "原序號"
  ,TK104 AS "原訂單單別"
  ,TK105 AS "原訂單單號"
  ,TK106 AS "原訂單金額"
  ,TK107 AS "原備註"

FROM EPSTK
