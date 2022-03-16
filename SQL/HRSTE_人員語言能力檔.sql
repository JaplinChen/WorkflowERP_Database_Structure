--HRSTE_人員語言能力檔
SELECT
  ,TE001 AS "人才編號"
  ,TE002 AS "序號"
  ,TE003 AS "語言能力代號"
  ,TE005 AS "單別"
  ,CASE 
   WHEN '1' THEN N'精通'
   WHEN '2' THEN N'中等'
   WHEN '3' THEN N'略懂'
   WHEN '4' THEN N'不會'
   ELSE ""
   END AS "聽"
  ,CASE 
   WHEN '1' THEN N'精通'
   WHEN '2' THEN N'中等'
   WHEN '3' THEN N'略懂'
   WHEN '4' THEN N'不會'
   ELSE ""
   END AS "說"
  ,CASE 
   WHEN '1' THEN N'精通'
   WHEN '2' THEN N'中等'
   WHEN '3' THEN N'略懂'
   WHEN '4' THEN N'不會'
   ELSE ""
   END AS "讀"
  ,CASE 
   WHEN '1' THEN N'精通'
   WHEN '2' THEN N'中等'
   WHEN '3' THEN N'略懂'
   WHEN '4' THEN N'不會'
   ELSE ""
   END AS "寫"
  ,TE010 AS "備註"

FROM HRSTE
