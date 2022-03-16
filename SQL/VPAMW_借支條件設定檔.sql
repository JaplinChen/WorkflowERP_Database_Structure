--VPAMW_借支條件設定檔
SELECT
  ,CASE 
   WHEN '1' THEN N'金額方式'
   WHEN '2' THEN N'比率方式'
   ELSE ""
   END AS "借支計算方式"
  ,CASE 
   WHEN '1' THEN N'全公司統一金額'
   WHEN '2' THEN N'職等借支金額'
   ELSE ""
   END AS "金額方式"
  ,MW003 AS "固定金額"
  ,CASE 
   WHEN '1' THEN N'固定比率'
   WHEN '2' THEN N'職等底薪比率'
   ELSE ""
   END AS "比率方式"
  ,MW005 AS "日薪底薪倍數"
  ,MW006 AS "月薪底薪比率%"

FROM VPAMW
