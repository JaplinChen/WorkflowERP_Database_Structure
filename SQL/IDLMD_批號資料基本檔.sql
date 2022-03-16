--IDLMD_批號資料基本檔
SELECT
  ,MD001 AS "批號"
  ,CASE 
   WHEN '1' THEN N'Creat'
   WHEN '2' THEN N'Spilt'
   WHEN '3' THEN N'Merge'
   WHEN '4' THEN N'Hold'
   WHEN '5' THEN N'結案'
   WHEN 'y' THEN N'指定結案'
   ELSE ""
   END AS "狀態"
  ,MD003 AS "Wafer型號"
  ,MD004 AS "目前製程作業"
  ,MD005 AS "目前供應商"
  ,MD006 AS "最後一次更新日"
  ,CASE 
   WHEN '0' THEN N'開帳'
   WHEN '1' THEN N'採購'
   WHEN '2' THEN N'進貨'
   WHEN '3' THEN N'委工單'
   WHEN '4' THEN N'庫存異動單據'
   WHEN '5' THEN N'Spilt'
   WHEN '6' THEN N'Merge'
   WHEN '7' THEN N'Hold'
   WHEN '8' THEN N'指定結案'
   ELSE ""
   END AS "最後來源"
  ,MD008 AS "最後來源單別"
  ,MD009 AS "晶圓批號"
  ,MD010 AS "目前產品品號"
  ,MD011 AS "單位"
  ,MD012 AS "數量"
  ,MD013 AS "最早更新日"
  ,CASE 
   WHEN '0' THEN N'開帳'
   WHEN '1' THEN N'採購'
   WHEN '2' THEN N'進貨'
   WHEN '3' THEN N'委工單'
   WHEN '4' THEN N'庫存異動單據'
   WHEN '5' THEN N'Spilt'
   WHEN '6' THEN N'Merge'
   WHEN '7' THEN N'Hold'
   WHEN '8' THEN N'指定結案'
   ELSE ""
   END AS "最早來源"
  ,MD015 AS "最早來源單別"
  ,MD016 AS "最早來源單號"
  ,MD017 AS "最後來源單號"
  ,MD018 AS "目前良率"
  ,MD019 AS "WaferSTART"
  ,MD020 AS "WafefOUT"
  ,MD021 AS "最早來源序號"
  ,MD022 AS "最後來源序號"
  ,MD023 AS "START數量"
  ,MD024 AS "DATECODE"
  ,MD025 AS "備註"
  ,CASE 
   WHEN '1' THEN N'Creat'
   WHEN '2' THEN N'Spilt'
   WHEN '3' THEN N'Merge'
   WHEN '4' THEN N'Hold'
   WHEN '5' THEN N'結案'
   WHEN 'y' THEN N'指定結案'
   ELSE ""
   END AS "母批狀態"
  ,MD103 AS "母批Wafer型號"
  ,MD104 AS "母批目前製程作業"
  ,MD105 AS "母批目前供應商"
  ,MD106 AS "母批最後一次更新日"
  ,CASE 
   WHEN '0' THEN N'開帳'
   WHEN '1' THEN N'採購'
   WHEN '2' THEN N'進貨'
   WHEN '3' THEN N'委工單'
   WHEN '4' THEN N'庫存異動單據'
   WHEN '5' THEN N'Spilt'
   WHEN '6' THEN N'Merge'
   WHEN '7' THEN N'Hold'
   WHEN '8' THEN N'指定結案'
   ELSE ""
   END AS "母批最後來源"
  ,MD108 AS "母批最後來源單別"
  ,MD110 AS "母批目前產品品號"
  ,MD117 AS "母批最後來源單號"
  ,MD118 AS "母批良率"
  ,MD121 AS "母批最早來源序號"
  ,MD122 AS "母批最後來源序號"

FROM IDLMD
