--NOTTB_應付票據單身檔
SELECT
  ,TB001 AS "票號"
  ,TB002 AS "序號"
  ,TB003 AS "異動日"
  ,CASE 
   WHEN '1' THEN N'開票,'
   WHEN '5' THEN N'退票,'
   WHEN '6' THEN N'兌現,'
   WHEN '7' THEN N'註銷'
   ELSE ""
   END AS "異動別"
  ,TB005 AS "匯率"
  ,TB006 AS "傳票單別"
  ,TB007 AS "傳票單號"
  ,TB008 AS "產生分錄碼"

FROM NOTTB
