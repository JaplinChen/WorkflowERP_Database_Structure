--EPSTM_出貨通知單身批號維護檔
SELECT
  ,TM001 AS "通知單別"
  ,TM002 AS "通知單號"
  ,TM003 AS "單身序號"
  ,TM004 AS "批號"
  ,TM005 AS "出貨數量"
  ,TM006 AS "出貨包裝數量"
  ,CASE 
   WHEN '1' THEN N'贈品量'
   WHEN '2' THEN N'備品量'
   ELSE ""
   END AS "類型"
  ,TM008 AS "贈備品量"
  ,TM009 AS "贈備品包裝量"
  ,TM010 AS "備註"
  ,TM011 AS "隱藏欄位"
  ,TM012 AS "隱藏欄位"
  ,TM013 AS "隱藏欄位"
  ,TM014 AS "更新碼"
  ,TM020 AS "儲位"

FROM EPSTM
