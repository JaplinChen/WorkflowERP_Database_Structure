--ACTTM_自定義報表結構單身檔
SELECT
  ,TM001 AS "報表編號"
  ,TM002 AS "行號"
  ,TM003 AS "列號"
  ,TM004 AS "值"
  ,CASE 
   WHEN '1' THEN N'固定值'
   WHEN '2' THEN N'公式'
   WHEN '3' THEN N'統計列'
   ELSE ""
   END AS "類型"

FROM ACTTM
