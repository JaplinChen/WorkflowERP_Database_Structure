--IDLTN_WIP媒體格式設定單頭檔
SELECT
  ,TN001 AS "製造廠商"
  ,CASE 
   WHEN '1' THEN N'Text'
   WHEN '2' THEN N'Excel'
   ELSE ""
   END AS "媒體格式"
  ,CASE 
   WHEN '1' THEN N'FAB WIP'
   WHEN '2' THEN N'MASK WIP'
   ELSE ""
   END AS "媒體性質"
  ,TN004 AS "備註"
  ,TN005 AS "存放路徑"
  ,TN006 AS "表頭列數"
  ,TN007 AS "日期格式"
  ,TN008 AS "日期區隔符號"
  ,TN014 AS "採購廠商"

FROM IDLTN
