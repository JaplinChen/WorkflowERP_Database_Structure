--NOTTN_融撤票單身檔
SELECT
  ,TN001 AS "託票單別"
  ,TN002 AS "託票單號"
  ,TN003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'融票'
   WHEN '2' THEN N'撤票'
   WHEN '3' THEN N'票據抵押開L/C'
   WHEN '4' THEN N'票據抵押還原'
   ELSE ""
   END AS "異動別"
  ,TN005 AS "票號"
  ,TN006 AS "備註"
  ,TN007 AS "確認碼"

FROM NOTTN
