--APSZE_加班資訊暫存檔
SELECT
  ,ZE001 AS "廠別"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"
  ,ZE003 AS "資源編號"
  ,ZE004 AS "日期"
  ,ZE005 AS "開始時間"
  ,ZE006 AS "結束時間"
  ,CASE 
   WHEN '0' THEN N'未排程，目前排程結果未考慮此限制'
   WHEN '1' THEN N'已排程，目前排程結果已考慮此限制'
   ELSE ""
   END AS "排程否"
  ,CASE 
   WHEN '0' THEN N' 加班'
   WHEN '1' THEN N'維修'
   ELSE ""
   END AS "類型"

FROM APSZE
