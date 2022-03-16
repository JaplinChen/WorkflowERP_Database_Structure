--APSUA_SFT派工資訊暫存檔
SELECT
  ,UA001 AS "廠別"
  ,UA002 AS "排程時間"
  ,UA003 AS "資源代號"
  ,UA004 AS "排程順序"
  ,UA005 AS "製令編號"
  ,UA006 AS "途程編號"
  ,UA007 AS "加工順序"
  ,UA008 AS "製程代號"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"

FROM APSUA
