--IDLTP_WIP媒體匯入值轉換設定檔
SELECT
  ,TP001 AS "廠商代號"
  ,CASE 
   WHEN '1' THEN N'Text'
   WHEN '2' THEN N'Excel'
   ELSE ""
   END AS "媒體格式"
  ,CASE 
   WHEN '1' THEN N'FAB WIP'
   WHEN '2' THEN N'MASK WIP'
   ELSE ""
   END AS "媒體性質"
  ,TP004 AS "序號"
  ,TP005 AS "設定檔序號"
  ,TP006 AS "原值"
  ,TP007 AS "轉換值"
  ,TP008 AS "產生進貨單"
  ,TP009 AS "進貨單別"
  ,TP010 AS "當站允許停留天數"

FROM IDLTP
