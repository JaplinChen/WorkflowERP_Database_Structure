--ACTTE_報表結構單頭檔
SELECT
  ,TE001 AS "報表編號"
  ,TE002 AS "報表名稱"
  ,CASE 
   WHEN '1' THEN N'時點'
   WHEN '2' THEN N'期間'
   ELSE ""
   END AS "報表性質"
  ,TE004 AS "備註"

FROM ACTTE
