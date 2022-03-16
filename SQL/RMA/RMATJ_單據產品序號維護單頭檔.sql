--RMATJ_單據產品序號維護單頭檔
SELECT
  ,TJ001 AS "單別"
  ,TJ002 AS "單號"
  ,TJ003 AS "單據日期"
  ,TJ004 AS "單據確認日期"
  ,TJ005 AS "對象代號"
  ,TJ006 AS "對象名稱"
  ,TJ007 AS "I/O別"
  ,CASE 
   WHEN '1' THEN N'入庫'
   WHEN '2' THEN N'銷貨'
   WHEN '3' THEN N'領用'
   WHEN '4' THEN N'轉撥'
   WHEN '5' THEN N'調整'
   ELSE ""
   END AS "異動別"
  ,TJ009 AS "總數量"
  ,TJ010 AS "確認碼"

FROM RMATJ
