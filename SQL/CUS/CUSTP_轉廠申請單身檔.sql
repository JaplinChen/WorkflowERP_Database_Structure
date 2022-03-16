--CUSTP_轉廠申請單身檔
SELECT
  ,TP001 AS "轉廠申請單別"
  ,TP002 AS "轉廠申請單號"
  ,TP003 AS "序號"
  ,TP004 AS "轉廠品號"
  ,TP005 AS "倉庫"
  ,CASE 
   WHEN '1' THEN N'成品'
   WHEN '2' THEN N'半成品'
   WHEN '3' THEN N'在製品'
   WHEN '4' THEN N'原料('
   WHEN '註' THEN N'M/S->成品,P->原料)'
   ELSE ""
   END AS "存貨型態"
  ,TP007 AS "申請數量"
  ,TP008 AS "已轉數量"
  ,TP009 AS "單位"
  ,TP010 AS "單價"
  ,TP011 AS "確認碼"

FROM CUSTP
