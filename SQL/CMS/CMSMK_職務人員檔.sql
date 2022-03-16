--CMSMK_職務人員檔
SELECT
  ,MK001 AS "職務代號"
  ,MK002 AS "人員代號"
  ,CASE 
   WHEN '1' THEN N'物管'
   WHEN '2' THEN N'生管'
   WHEN '3' THEN N'業務'
   WHEN '4' THEN N'採購'
   WHEN '5' THEN N'會計'
   WHEN '6' THEN N'出納'
   ELSE ""
   END AS "職務分類"
  ,MK005 AS "備註"

FROM CMSMK
