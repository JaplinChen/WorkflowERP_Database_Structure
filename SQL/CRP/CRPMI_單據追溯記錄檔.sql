--CRPMI_單據追溯記錄檔
SELECT
  ,MI001 AS "供給單別"
  ,MI002 AS "供給單號"
  ,MI003 AS "供給序號"
  ,MI004 AS "需求單別"
  ,MI005 AS "需求單號"
  ,MI006 AS "需求序號"
  ,CASE 
   WHEN '1' THEN N'需求來源是訂單'
   WHEN '0' THEN N'非訂單'
   ELSE ""
   END AS "訂單否"
  ,MI008 AS "加工順序"
  ,CASE 
   WHEN '1' THEN N'需求來源是採購單'
   WHEN '0' THEN N'非採購單'
   ELSE ""
   END AS "採購否"

FROM CRPMI
