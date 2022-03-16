--PXMTC_縣市聯社進銷存底稿單頭資
SELECT
  ,TC001 AS "庫存年月"
  ,TC002 AS "營站代號"
  ,TC003 AS "備註"
  ,TC004 AS "回籠調整單別"
  ,TC005 AS "回籠調整單號"
  ,TC006 AS "銷貨單別"
  ,TC007 AS "銷貨單號"
  ,TC008 AS "銷退單別"
  ,TC009 AS "銷退單號"
  ,TC010 AS "確認碼"
  ,TC011 AS "確認者"
  ,TC012 AS "確認日期"
  ,TC013 AS "自動產生回籠單別"
  ,TC014 AS "自動產生回籠單號"
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
  ,TC016 AS "進貨數量合計"
  ,TC017 AS "退貨數量合計"
  ,TC018 AS "銷貨數量合計"
  ,TC019 AS "銷退數量合計"
  ,TC020 AS "銷貨金額合計"
  ,TC021 AS "銷退金額合計"
  ,TC022 AS "回籠調整量合計"
  ,TC023 AS "調整量合計"
  ,TC024 AS "期初存量合計"
  ,TC025 AS "期末存量合計"
  ,TC026 AS "回籠進貨單別"
  ,TC027 AS "回籠進貨單號"
  ,TC028 AS "付款條件代號"
  ,TC029 AS "通關方式"
  ,TC030 AS "統一編號"
  ,TC031 AS "客戶全名"
  ,TC032 AS "發票地址一"
  ,TC033 AS "發票地址二"
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
  ,TC035 AS "申報年月"
  ,TC041 AS "稅別碼"

FROM PXMTC
