--IDLMI_等級代號檔
SELECT
  ,MI001 AS "等級代號"
  ,MI002 AS "等級說明"
  ,CASE 
   WHEN '1' THEN N'良品'
   WHEN '2' THEN N'不良品'
   WHEN '3' THEN N'廢品'
   ELSE ""
   END AS "性質"
  ,MI004 AS "類型屬性"
  ,MI013 AS "備註"

FROM IDLMI
