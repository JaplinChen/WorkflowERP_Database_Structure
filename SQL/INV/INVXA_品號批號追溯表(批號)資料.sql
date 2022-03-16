--INVXA_品號批號追溯表(批號)資料
SELECT
  ,XA001 AS "條件品號"
  ,XA002 AS "條件批號"
  ,CASE 
   WHEN '1' THEN N'上展'
   WHEN '2' THEN N'下展'
   ELSE ""
   END AS "上下展"
  ,XA004 AS "序號"
  ,XA005 AS "主件"
  ,XA006 AS "品號"
  ,XA007 AS "批號"
  ,XA008 AS "憑證單別"
  ,XA009 AS "憑證單號"
  ,XA010 AS "憑證序號"
  ,XA011 AS "日期"
  ,XA012 AS "製令單號"

FROM INVXA
