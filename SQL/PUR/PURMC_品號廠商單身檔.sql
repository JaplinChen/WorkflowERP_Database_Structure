--PURMC_品號廠商單身檔
SELECT
  ,MC001 AS "品號"
  ,MC002 AS "廠商代號"
  ,MC003 AS "幣別"
  ,MC004 AS "計價單位"
  ,MC005 AS "數量以上"
  ,MC006 AS "採購單價"
  ,MC007 AS "備註"
  ,MC008 AS "生效日"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "交易條件"

FROM PURMC
