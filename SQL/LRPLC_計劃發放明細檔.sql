--LRPLC_計劃發放明細檔
SELECT
  ,LC001 AS "計劃批號"
  ,CASE 
   WHEN '1' THEN N'生產計劃'
   WHEN '2' THEN N'採購計劃'
   ELSE ""
   END AS "計劃別"
  ,LC003 AS "來源單別"
  ,LC004 AS "來源單號"
  ,LC005 AS "來源序號"
  ,LC006 AS "發放單別"
  ,LC007 AS "發放單號"
  ,LC008 AS "發放序號"
  ,CASE 
   WHEN '1' THEN N'製令'
   WHEN '2' THEN N'採購'
   WHEN '3' THEN N'請購'
   ELSE ""
   END AS "發放別"

FROM LRPLC
