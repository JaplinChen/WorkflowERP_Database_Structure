--TISMA_稅控介面參數檔
SELECT
  ,CASE 
   WHEN '1' THEN N'發票底稿'
   WHEN '2' THEN N'發票底稿及文字檔案'
   ELSE ""
   END AS "發票資料產生方式"
  ,MA002 AS "啟用稅控介面管理系統"

FROM TISMA
