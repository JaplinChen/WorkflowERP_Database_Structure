--CRPMO_加班資訊檔
SELECT
  ,MO001 AS "資源編號"
  ,MO002 AS "日期"
  ,MO003 AS "開始時間"
  ,MO004 AS "結束時間"
  ,CASE 
   WHEN '0' THEN N'未排程，目前排程結果未考慮此限制'
   WHEN '1' THEN N'已排程，目前排程結果已考慮此限制'
   ELSE ""
   END AS "排程否"

FROM CRPMO
