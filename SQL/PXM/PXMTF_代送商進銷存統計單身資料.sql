--PXMTF_代送商進銷存統計單身資料
SELECT
  ,TF001 AS "庫存年月"
  ,TF002 AS "代送商代號"
  ,TF003 AS "品號"
  ,TF004 AS "進價"
  ,TF005 AS "期初存量"
  ,TF006 AS "調撥數量"
  ,TF007 AS "回籠訂單數量"
  ,TF008 AS "公教銷貨數量"
  ,TF009 AS "公教銷退數量"
  ,TF010 AS "期末存量"
  ,TF011 AS "盤點數量"
  ,TF012 AS "自結數量"
  ,TF013 AS "備註"
  ,TF014 AS "確認碼"
  ,TF015 AS "進價含稅"

FROM PXMTF
