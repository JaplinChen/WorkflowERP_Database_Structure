--APSMC_工作模式單身檔
SELECT
  ,MC001 AS "工作模式代號"
  ,MC002 AS "序號"
  ,MC003 AS "時段開始時間(時:分)"
  ,MC004 AS "時段結束時間(時:分)"
  ,MC005 AS "備註"
  ,CASE 
   WHEN '0' THEN N'休假'
   WHEN '1' THEN N'正常班'
   ELSE ""
   END AS "工作型態"

FROM APSMC
