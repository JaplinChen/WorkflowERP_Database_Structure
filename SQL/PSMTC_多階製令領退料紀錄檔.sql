--PSMTC_多階製令領退料紀錄檔
SELECT
  ,TC001 AS "領退料單別"
  ,TC002 AS "領退料單號"
  ,TC003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'領料'
   WHEN '2' THEN N'退料'
   ELSE ""
   END AS "領退料別"
  ,TC005 AS "材料品號"
  ,TC006 AS "材料品名"
  ,TC007 AS "材料規格"
  ,TC008 AS "單位"
  ,TC009 AS "領退料數量"
  ,TC010 AS "製令單別"
  ,TC011 AS "製令單號"
  ,TC012 AS "專案代號"
  ,TC013 AS "訂單單別"
  ,TC014 AS "訂單單號"
  ,TC015 AS "訂單序號"

FROM PSMTC
