--BTSNF_庫存盤點條碼處理單身資料
SELECT
  ,NF001 AS "工作ID"
  ,NF002 AS "作業種類"
  ,NF003 AS "處理序號"
  ,NF004 AS "盤點底稿序號"
  ,NF005 AS "品號"
  ,NF006 AS "批號"
  ,NF007 AS "庫別"
  ,NF008 AS "儲位"
  ,NF009 AS "盤點數量"
  ,NF010 AS "盤點時間"

FROM BTSNF
