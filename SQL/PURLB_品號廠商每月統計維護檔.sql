--PURLB_品號廠商每月統計維護檔
SELECT
  ,LB001 AS "廠商代號"
  ,LB002 AS "品號"
  ,LB003 AS "年月"
  ,LB004 AS "進貨數量"
  ,LB005 AS "進貨金額"
  ,LB006 AS "進貨筆數"
  ,LB007 AS "退貨數量"
  ,LB008 AS "退貨金額"
  ,LB009 AS "退貨筆數"
  ,LB010 AS "不良數量"
  ,LB011 AS "不良筆數"
  ,LB012 AS "逾期筆數"
  ,LB013 AS "進貨包裝數量"
  ,LB014 AS "退貨包裝數量"
  ,LB015 AS "不良包裝數量"
  ,LB017 AS "到貨數量"

FROM PURLB
