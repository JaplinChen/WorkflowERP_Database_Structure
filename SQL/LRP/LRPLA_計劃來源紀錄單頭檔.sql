--LRPLA_計劃來源紀錄單頭檔
SELECT
  ,LA001 AS "計劃批號"
  ,LA002 AS "保留欄位"
  ,LA003 AS "備註"
  ,LA004 AS "廠別"
  ,CASE 
   WHEN '1' THEN N'生產計劃'
   WHEN '2' THEN N'採購計劃'
   ELSE ""
   END AS "計劃別"

FROM LRPLA
