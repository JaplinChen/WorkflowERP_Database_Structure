--FCSML_調整沖銷代號檔
SELECT
  ,ML001 AS "調整/沖銷代號"
  ,ML002 AS "調整/沖銷名稱"
  ,ML003 AS "備註"
  ,CASE 
   WHEN '1' THEN N'調整'
   WHEN '2' THEN N'沖銷'
   ELSE ""
   END AS "用途"

FROM FCSML
