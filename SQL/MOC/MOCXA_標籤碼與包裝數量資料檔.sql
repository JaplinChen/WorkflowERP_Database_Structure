--MOCXA_標籤碼與包裝數量資料檔
SELECT
  ,XA001 AS "單別"
  ,XA002 AS "單號"
  ,XA003 AS "序號"
  ,XA004 AS "子單身序號"
  ,CASE 
   WHEN '1' THEN N'廠內'
   WHEN '2' THEN N'託外'
   ELSE ""
   END AS "製令性質"
  ,XA006 AS "數量"

FROM MOCXA
