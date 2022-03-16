--BCHTF_保稅廠外加工進廠檔
SELECT
  ,TF001 AS "存倉記錄卡號"
  ,TF002 AS "序號"
  ,CASE 
   WHEN '1' THEN N'進貨'
   WHEN '2' THEN N'入庫'
   WHEN '3' THEN N'退料'
   ELSE ""
   END AS "異動別"
  ,TF004 AS "參考單別"
  ,TF005 AS "參考單號"
  ,TF006 AS "參考序號"
  ,TF007 AS "品號"
  ,TF008 AS "回廠日期"
  ,TF009 AS "數量"
  ,TF010 AS "未完工數量"
  ,TF011 AS "備註"
  ,TF012 AS "單位"

FROM BCHTF
