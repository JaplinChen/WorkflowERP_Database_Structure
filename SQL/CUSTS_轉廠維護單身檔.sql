--CUSTS_轉廠維護單身檔
SELECT
  ,TS001 AS "轉廠維護單別"
  ,TS002 AS "轉廠維護單號"
  ,TS003 AS "序號"
  ,TS004 AS "轉廠品號"
  ,TS005 AS "倉庫"
  ,CASE 
   WHEN '1' THEN N'成品'
   WHEN '2' THEN N'半成品'
   WHEN '3' THEN N'在製品'
   WHEN '4' THEN N'原料('
   WHEN '註' THEN N'M/S->成品'
   ELSE ""
   END AS "存貨型態"
  ,TS007 AS "轉廠數量"
  ,TS009 AS "單位"
  ,TS010 AS "單價"
  ,TS011 AS "確認碼"

FROM CUSTS
