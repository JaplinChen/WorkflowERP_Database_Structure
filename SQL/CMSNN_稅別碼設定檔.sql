--CMSNN_稅別碼設定檔
SELECT
  ,NN001 AS "稅別碼"
  ,NN002 AS "稅別名稱"
  ,NN003 AS "進/銷項"
  ,NN004 AS "營業稅率"
  ,NN005 AS "發票聯數"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,NN007 AS "媒體申報格式"
  ,NN008 AS "會計科目"
  ,NN009 AS "備註"

FROM CMSNN
