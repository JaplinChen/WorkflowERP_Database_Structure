--PURUC_採購單交期確認明細資料檔
SELECT
  ,UC001 AS "單別"
  ,UC002 AS "單號"
  ,UC003 AS "序號"
  ,UC004 AS "交期序號"
  ,UC005 AS "最近答應日期"
  ,UC006 AS "最近交期確認日期"
  ,UC007 AS "預計到廠日期"
  ,UC008 AS "預計到庫日期"
  ,UC009 AS "確認交貨數量"
  ,UC010 AS "確認者"
  ,UC011 AS "備註一"
  ,UC012 AS "備註二"
  ,UC013 AS "備註三"
  ,UC019 AS "確認包裝數量"

FROM PURUC
