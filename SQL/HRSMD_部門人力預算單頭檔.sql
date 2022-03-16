--HRSMD_部門人力預算單頭檔
SELECT
  ,MD001 AS "年度"
  ,MD002 AS "部門代號"
  ,MD003 AS "職務"
  ,MD004 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'每月'
   WHEN '2' THEN N'每季'
   WHEN '3' THEN N'每半年'
   WHEN '4' THEN N'每年'
   ELSE ""
   END AS "預算類別"
  ,MD006 AS "備註"

FROM HRSMD
