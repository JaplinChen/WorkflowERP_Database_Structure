--PXMTB_福利總處進銷存底稿單身資
SELECT
  ,TB001 AS "庫存年月"
  ,TB002 AS "品號"
  ,TB003 AS "單價"
  ,TB004 AS "營站代號"
  ,TB005 AS "期初存量"
  ,TB006 AS "進貨數量"
  ,TB007 AS "銷貨數量"
  ,TB008 AS "銷貨金額"
  ,TB009 AS "退貨數量"
  ,TB010 AS "回籠調整量"
  ,TB011 AS "銷退數量"
  ,TB012 AS "銷退金額"
  ,TB013 AS "期末存量"
  ,TB014 AS "回籠調整單別"
  ,TB015 AS "回籠調整單號"
  ,TB016 AS "銷貨單別"
  ,TB017 AS "銷貨單號"
  ,TB018 AS "銷退單別"
  ,TB019 AS "銷退單號"
  ,CASE 
   WHEN '1' THEN N'福利總處'
   WHEN '2' THEN N'全聯社'
   WHEN '4' THEN N'福利總處-副食'
   ELSE ""
   END AS "營站分類方式"
  ,TB021 AS "調整量"
  ,TB022 AS "確認碼"
  ,TB023 AS "單價含稅否"
  ,TB024 AS "回籠進貨單別"
  ,TB025 AS "回籠進貨單號"
  ,TB026 AS "銷貨未稅金額"
  ,TB027 AS "銷貨稅額"
  ,TB028 AS "銷退未稅金額"
  ,TB029 AS "銷退稅額"
  ,TB030 AS "付款條件代號"
  ,TB031 AS "通關方式"
  ,TB032 AS "統一編號"
  ,TB033 AS "客戶全名"
  ,TB034 AS "發票地址一"
  ,TB035 AS "發票地址二"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'普通發票'
   WHEN 'C' THEN N'免用發票'
   ELSE ""
   END AS "發票聯數"
  ,TB037 AS "保留欄位"
  ,TB038 AS "申報年月"

FROM PXMTB
