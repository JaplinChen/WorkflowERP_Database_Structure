--YPANB_社會褔利金身份類型單身檔
SELECT
  ,NB001 AS "身份類型"
  ,NB002 AS "福利金編號"
  ,NB003 AS "員工負擔比率"
  ,NB004 AS "資方負擔比率"
  ,NB005 AS "基數類型"
  ,CASE 
   WHEN '0' THEN N'整數'
   WHEN '1' THEN N'小數一位'
   WHEN '2' THEN N'小數二位'
   ELSE ""
   END AS "金額取位"
  ,NB007 AS "備註"
  ,CASE 
   WHEN '0' THEN N'四捨五入'
   WHEN '1' THEN N'無條件進位'
   WHEN '2' THEN N'無條件舍位'
   ELSE ""
   END AS "進位原則"

FROM YPANB
