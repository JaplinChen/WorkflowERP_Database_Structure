--BTSNE_庫存盤點條碼處理單頭資料
SELECT
  ,NE001 AS "工作ID"
  ,NE002 AS "作業種類"
  ,NE003 AS "處理狀態"
  ,NE004 AS "工作日期"
  ,NE005 AS "使用者代號"
  ,NE006 AS "盤點底稿編號"
  ,NE009 AS "異常碼"

FROM BTSNE
