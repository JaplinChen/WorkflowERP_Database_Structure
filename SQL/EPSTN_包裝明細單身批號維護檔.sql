--EPSTN_包裝明細單身批號維護檔
SELECT
  ,TN001 AS "通知單別"
  ,TN002 AS "通知單號"
  ,TN003 AS "包裝序號"
  ,TN004 AS "批號"
  ,TN005 AS "出貨數量"
  ,TN006 AS "出貨包裝數量"
  ,CASE 
   WHEN '1' THEN N'贈品量'
   WHEN '2' THEN N'備品量'
   ELSE ""
   END AS "類型"
  ,TN008 AS "贈備品量"
  ,TN009 AS "贈備品包裝量"
  ,TN010 AS "備註"
  ,TN016 AS "儲位"

FROM EPSTN
