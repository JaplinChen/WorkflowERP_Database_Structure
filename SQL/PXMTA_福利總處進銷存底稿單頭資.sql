--PXMTA_福利總處進銷存底稿單頭資
SELECT
  ,TA001 AS "庫存年月"
  ,TA002 AS "品號"
  ,TA003 AS "單價"
  ,TA004 AS "備註"
  ,CASE 
   WHEN '1' THEN N'福利總處'
   WHEN '2' THEN N'全聯社'
   WHEN '4' THEN N'福利總處-副食'
   ELSE ""
   END AS "營站分類方式"
  ,TA006 AS "確認碼"
  ,TA007 AS "確認者"
  ,TA008 AS "確認日期"
  ,TA009 AS "單價含稅否"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態碼"
  ,TA011 AS "進貨數量合計"
  ,TA012 AS "退貨數量合計"
  ,TA013 AS "銷貨數量合計"
  ,TA014 AS "銷退數量合計"
  ,TA015 AS "銷貨金額合計"
  ,TA016 AS "銷退金額合計"
  ,TA017 AS "回籠調整量合計"
  ,TA018 AS "調整量合計"
  ,TA019 AS "期初存量合計"
  ,TA020 AS "期末存量合計"
  ,TA021 AS "鎖定碼"

FROM PXMTA
