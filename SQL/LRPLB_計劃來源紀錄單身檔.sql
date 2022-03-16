--LRPLB_計劃來源紀錄單身檔
SELECT
  ,LB001 AS "計劃批號"
  ,LB002 AS "來源單別"
  ,LB003 AS "來源單號"
  ,LB004 AS "來源序號"
  ,LB005 AS "計劃日期"
  ,LB006 AS "計劃時間"
  ,LB007 AS "計劃人員"
  ,LB008 AS "備註"
  ,CASE 
   WHEN '1' THEN N'生產計劃'
   WHEN '2' THEN N'採購計劃'
   ELSE ""
   END AS "計劃別"
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'製令'
   WHEN '3' THEN N'計劃'
   WHEN '5' THEN N'銷售預測'
   ELSE ""
   END AS "依據"

FROM LRPLB
