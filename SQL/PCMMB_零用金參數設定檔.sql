--PCMMB_零用金參數設定檔
SELECT
  ,CASE 
   WHEN '1' THEN N'拋轉自動分錄底稿'
   WHEN '2' THEN N'拋轉自動分錄底稿及會計傳票'
   ELSE ""
   END AS "拋轉方式"
  ,MB002 AS "同底稿科目彙總"
  ,MB003 AS "底稿記載原幣"
  ,CASE 
   WHEN '1' THEN N'依借貸方'
   WHEN '2' THEN N'依原底稿'
   ELSE ""
   END AS "拋轉傳票排列方式"

FROM PCMMB
