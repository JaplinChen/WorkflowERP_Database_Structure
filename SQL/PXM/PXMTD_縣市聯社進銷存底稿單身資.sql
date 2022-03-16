--PXMTD_縣市聯社進銷存底稿單身資
SELECT
  ,TD001 AS "庫存年月"
  ,TD002 AS "營站代號"
  ,TD003 AS "品號"
  ,TD004 AS "單價"
  ,TD005 AS "期初存量"
  ,TD006 AS "進貨數量"
  ,TD007 AS "銷貨數量"
  ,TD008 AS "銷貨金額"
  ,TD009 AS "退貨數量"
  ,TD010 AS "回籠調整量"
  ,TD011 AS "銷退數量"
  ,TD012 AS "銷退金額"
  ,TD013 AS "期末存量"
  ,TD014 AS "調整量"
  ,TD015 AS "確認碼"
  ,TD016 AS "單價含稅否"
  ,TD017 AS "銷貨未稅金額"
  ,TD018 AS "銷貨稅額"
  ,TD019 AS "銷退未稅金額"
  ,TD020 AS "銷退稅額"

FROM PXMTD
