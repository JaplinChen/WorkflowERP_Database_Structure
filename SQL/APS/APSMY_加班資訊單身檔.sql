--APSMY_加班資訊單身檔
SELECT
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"
  ,MY002 AS "資源代號"
  ,MY003 AS "日期"
  ,MY004 AS "開始時間"
  ,MY005 AS "結束時間"
  ,MY006 AS "備註"
  ,CASE 
   WHEN '0' THEN N' 加班'
   WHEN '1' THEN N'維修'
   ELSE ""
   END AS "類型"

FROM APSMY
