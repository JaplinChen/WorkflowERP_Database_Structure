--IDLTO_WIP媒體格式設定單身檔
SELECT
  ,TO001 AS "廠商代號"
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
  ,TO004 AS "序號"
  ,TO005 AS "起始位置"
  ,TO006 AS "截止位置"
  ,TO007 AS "欄位代號"
  ,TO008 AS "品號轉換"
  ,TO009 AS "對應值"
  ,TO010 AS "轉換值"
  ,TO011 AS "產生進貨單"
  ,TO012 AS "進貨單別"
  ,TO013 AS "當站允許停留天數"
  ,TO014 AS "匯入值轉換"

FROM IDLTO
