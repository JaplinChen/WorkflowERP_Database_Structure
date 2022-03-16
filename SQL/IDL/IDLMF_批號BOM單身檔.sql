--IDLMF_批號BOM單身檔
SELECT
  ,MF001 AS "批號"
  ,CASE 
   WHEN '1' THEN N'Creat'
   WHEN '2' THEN N'Spilt'
   WHEN '3' THEN N'Merge'
   WHEN '4' THEN N'Hold'
   WHEN '5' THEN N'結案'
   WHEN 'y' THEN N'指定結案'
   ELSE ""
   END AS "狀態"
  ,MF003 AS "Wafer型號"
  ,MF004 AS "目前製程作業"
  ,MF005 AS "目前供應商"
  ,MF006 AS "最後一次更新日"
  ,CASE 
   WHEN '1' THEN N'人工'
   WHEN '2' THEN N'進貨'
   WHEN '3' THEN N'委工單'
   WHEN '4' THEN N'庫存異動單據'
   WHEN '5' THEN N'Spilt'
   WHEN '6' THEN N'Merge'
   WHEN '7' THEN N'Hold'
   WHEN '8' THEN N'指定結案'
   ELSE ""
   END AS "最後來源"
  ,MF008 AS "最後來源單別"
  ,MF009 AS "母批批號"
  ,MF010 AS "目前產品品號"
  ,MF011 AS "單位"
  ,MF012 AS "數量"
  ,MF013 AS "最早更新日"
  ,CASE 
   WHEN '1' THEN N'人工'
   WHEN '2' THEN N'進貨'
   WHEN '3' THEN N'委工單'
   WHEN '4' THEN N'庫存異動單據'
   WHEN '5' THEN N'Spilt'
   WHEN '6' THEN N'Merge'
   WHEN '7' THEN N'Hold'
   WHEN '8' THEN N'指定結案'
   ELSE ""
   END AS "最早來源"
  ,MF015 AS "最早來源單別"
  ,MF016 AS "最早來源單號"
  ,MF017 AS "最後來源單號"
  ,MF018 AS "目前良率"
  ,CASE 
   WHEN '1' THEN N'Creat'
   WHEN '2' THEN N'Spilt'
   WHEN '3' THEN N'Merge'
   WHEN '4' THEN N'Hold'
   WHEN '5' THEN N'結案'
   WHEN 'y' THEN N'指定結案'
   ELSE ""
   END AS "母批狀態"
  ,MF103 AS "母批Wafer型號"
  ,MF104 AS "母批目前製程作業"
  ,MF105 AS "母批目前供應商"
  ,MF106 AS "母批最後一次更新日"
  ,CASE 
   WHEN '1' THEN N'人工'
   WHEN '2' THEN N'進貨'
   WHEN '3' THEN N'委工單'
   WHEN '4' THEN N'庫存異動單據'
   WHEN '5' THEN N'Spilt'
   WHEN '6' THEN N'Merge'
   WHEN '7' THEN N'Hold'
   WHEN '8' THEN N'指定結案'
   ELSE ""
   END AS "母批最後來源"
  ,MF108 AS "母批最後來源單別"
  ,MF110 AS "母批目前產品品號"
  ,MF117 AS "母批最後來源單號"
  ,MF118 AS "母批良率"

FROM IDLMF
