--YPALB_社會褔利金月繳費單身檔
SELECT
  ,LB001 AS "員工編號"
  ,LB002 AS "年月"
  ,LB003 AS "褔利金編號"
  ,LB004 AS "員工負擔比率"
  ,LB005 AS "資方負擔比率"
  ,CASE 
   WHEN '1' THEN N'社保金基數'
   WHEN '2' THEN N'公積金基數'
   ELSE ""
   END AS "基數類型"
  ,LB007 AS "員工繳費金額"
  ,LB008 AS "資方繳費金額"

FROM YPALB
