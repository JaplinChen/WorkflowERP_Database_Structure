--FCSTR_合併股東權益變動表年度期
SELECT
  ,TR001 AS "會計年度"
  ,TR002 AS "期別"
  ,CASE 
   WHEN '1' THEN N'股東權益期初餘額'
   WHEN '2' THEN N'股東權益各期餘額'
   WHEN '3' THEN N'股東權益各期餘額'
   ELSE ""
   END AS "用途"
  ,TR004 AS "備註"
  ,TR005 AS "合併代號"

FROM FCSTR
