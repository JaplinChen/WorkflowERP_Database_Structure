--MRPMC_時距設定單身檔
SELECT
  ,MC001 AS "時距代號"
  ,MC002 AS "序號"
  ,MC003 AS "週期數"
  ,CASE 
   WHEN '1' THEN N'日'
   WHEN '2' THEN N'週'
   WHEN '3' THEN N'旬'
   WHEN '4' THEN N'月'
   WHEN '5' THEN N'季'
   ELSE ""
   END AS "週期單位"
  ,MC005 AS "備註"

FROM MRPMC
