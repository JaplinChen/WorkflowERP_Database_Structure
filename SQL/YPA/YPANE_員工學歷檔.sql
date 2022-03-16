--YPANE_員工學歷檔
SELECT
  ,NE001 AS "員工代號"
  ,NE002 AS "序號"
  ,NE003 AS "學歷代號"
  ,NE004 AS "學校代號"
  ,NE005 AS "科系代號"
  ,NE006 AS "畢肄業"
  ,NE008 AS "證號"
  ,NE009 AS "日夜間部"
  ,NE010 AS "最高學歷"
  ,NE011 AS "備註"
  ,NE012 AS "起始年月"
  ,NE013 AS "截止年月"
  ,NE014 AS "學校名稱"
  ,NE015 AS "科系名稱"
  ,CASE 
   WHEN '1' THEN N'主'
   WHEN '2' THEN N'副修'
   ELSE ""
   END AS "主/副修"

FROM YPANE
