--ACTNH_股東權益變動表分類單頭檔
SELECT
  ,NH001 AS "分類代號"
  ,NH002 AS "分類名稱"
  ,CASE 
   WHEN '1' THEN N'前段'
   WHEN '2' THEN N'保留盈餘'
   WHEN '3' THEN N'權益調整'
   WHEN '4' THEN N'後段'
   WHEN '5' THEN N'少數股權'
   ELSE ""
   END AS "分類屬性"
  ,NH004 AS "備註"
  ,NH008 AS "會計制度"

FROM ACTNH
