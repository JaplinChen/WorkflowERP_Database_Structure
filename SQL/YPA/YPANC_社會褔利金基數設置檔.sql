--YPANC_社會褔利金基數設置檔
SELECT
  ,NC001 AS "基數類型"
  ,NC002 AS "基數名稱"
  ,NC003 AS "基數上限"
  ,NC004 AS "基數下限"
  ,CASE 
   WHEN '0' THEN N'整數'
   WHEN '1' THEN N'小數一位'
   WHEN '2' THEN N'小數二位'
   ELSE ""
   END AS "金額取位"
  ,NC006 AS "備註"
  ,CASE 
   WHEN '0' THEN N'四捨五入'
   WHEN '1' THEN N'無條件進位'
   WHEN '2' THEN N'無條件舍位'
   ELSE ""
   END AS "進位原則"

FROM YPANC
