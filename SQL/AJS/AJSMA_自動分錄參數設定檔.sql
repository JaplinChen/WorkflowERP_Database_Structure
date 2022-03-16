--AJSMA_自動分錄參數設定檔
SELECT
  ,MA001 AS "存貨科目分類方式"
  ,CASE 
   WHEN '1' THEN N'拋轉自動分錄底稿'
   WHEN '2' THEN N'拋轉自動分錄底稿及會計傳票'
   ELSE ""
   END AS "拋轉方式"
  ,MA003 AS "同底稿科目彙總"
  ,MA004 AS "底稿記載原幣"
  ,MA005 AS "收入科目分類方式"
  ,CASE 
   WHEN '1' THEN N'依借貸方'
   WHEN '2' THEN N'依原底稿'
   ELSE ""
   END AS "拋轉傳票排列方式"
  ,CASE 
   WHEN '1' THEN N'傳票作廢'
   WHEN '2' THEN N'傳票刪除'
   ELSE ""
   END AS "傳票還原方式"

FROM AJSMA
