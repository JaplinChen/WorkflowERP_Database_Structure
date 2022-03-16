--SFTTD_SFT製令檔
SELECT
  ,TD001 AS "製令單別"
  ,TD002 AS "製令單號"
  ,TD009 AS "預計開工"
  ,TD010 AS "預計完工"
  ,CASE 
   WHEN '1' THEN N'未生產'
   WHEN '2' THEN N'已發料'
   WHEN '3' THEN N'生產中'
   WHEN 'Y' THEN N'已完工'
   WHEN 'y' THEN N'指定完工'
   ELSE ""
   END AS "狀態碼"
  ,TD012 AS "實際開工"
  ,TD013 AS "確認碼"
  ,TD014 AS "實際完工"
  ,TD015 AS "預計產量"
  ,TD016 AS "已領套數"
  ,TD017 AS "已生產量"
  ,TD018 AS "報廢數量"
  ,TD045 AS "預計產包裝量"
  ,TD046 AS "已生產包裝量"
  ,TD047 AS "報廢包裝數量"
  ,TD082 AS "鎖定開工時間"
  ,TD083 AS "鎖定完工時間"
  ,TD084 AS "預計開工時間"
  ,TD085 AS "預計完工時間"
  ,TD086 AS "製程否"
  ,CASE 
   WHEN '1' THEN N'固定期間'
   WHEN '2' THEN N'固定開始結束時間'
   ELSE ""
   END AS "外包類型"
  ,TD088 AS "作業時間"
  ,TD089 AS "SFT批號"

FROM SFTTD
