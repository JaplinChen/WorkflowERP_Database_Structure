--APSZB_鎖定使用設備暫存檔
SELECT
  ,ZB001 AS "廠別代號"
  ,ZB002 AS "製令編號"
  ,ZB003 AS "途程編號"
  ,ZB004 AS "加工順序"
  ,ZB005 AS "製程代號"
  ,ZB006 AS "資源編號"
  ,ZB007 AS "生產數量"
  ,CASE 
   WHEN '0' THEN N'未排程，目前排程結果未考慮此限制'
   WHEN '1' THEN N'已排程，目前排程結果已考慮此限制'
   ELSE ""
   END AS "排程否"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"

FROM APSZB
