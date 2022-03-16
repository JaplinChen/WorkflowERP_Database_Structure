--PURLC_廠商每月統計維護檔
SELECT
  ,LC001 AS "廠商代號"
  ,LC002 AS "年月"
  ,LC003 AS "進貨數量"
  ,LC004 AS "進貨金額"
  ,LC005 AS "進貨筆數"
  ,LC006 AS "退貨數量"
  ,LC007 AS "退貨金額"
  ,LC008 AS "退貨筆數"
  ,LC009 AS "不良數量"
  ,LC010 AS "不良筆數"
  ,LC011 AS "逾期筆數"
  ,LC012 AS "折讓金額"
  ,LC013 AS "進貨包裝數量"
  ,LC014 AS "退貨包裝數量"
  ,LC015 AS "不良包裝數量"
  ,LC017 AS "到貨數量"

FROM PURLC
