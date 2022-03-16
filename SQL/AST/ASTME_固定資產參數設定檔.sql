--ASTME_固定資產參數設定檔
SELECT
  ,ME001 AS "取得單別"
  ,ME002 AS "折舊單別"
  ,ME003 AS "出售利得科目"
  ,ME004 AS "出售損失科目"
  ,ME005 AS "年折舊額起算月份"
  ,CASE 
   WHEN '1' THEN N'拋轉自動分錄底稿'
   WHEN '2' THEN N'拋轉自動分錄底稿及會計傳票'
   ELSE ""
   END AS "拋轉方式"
  ,ME007 AS "同底稿科目彙總"
  ,ME008 AS "底稿記載原幣"
  ,CASE 
   WHEN '1' THEN N'依借貸方'
   WHEN '2' THEN N'依原底稿'
   ELSE ""
   END AS "拋轉傳票排列方式"

FROM ASTME
