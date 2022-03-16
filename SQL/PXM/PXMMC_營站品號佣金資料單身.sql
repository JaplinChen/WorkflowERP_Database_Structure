--PXMMC_營站品號佣金資料單身
SELECT
  ,MC001 AS "營站代號"
  ,MC002 AS "品號"
  ,CASE 
   WHEN '1' THEN N'採佣金比率'
   WHEN '2' THEN N'採固定金額'
   ELSE ""
   END AS "品號佣金計算方式"
  ,MC004 AS "品號佣金比率%"
  ,MC005 AS "佣金金額"

FROM PXMMC
