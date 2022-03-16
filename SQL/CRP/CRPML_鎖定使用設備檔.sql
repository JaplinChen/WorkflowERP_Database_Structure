--CRPML_鎖定使用設備檔
SELECT
  ,ML001 AS "製令單別"
  ,ML002 AS "製令單號"
  ,ML003 AS "途程品號"
  ,ML004 AS "途程代號"
  ,ML005 AS "加工順序"
  ,ML006 AS "製程代號"
  ,ML007 AS "資源編號"
  ,ML008 AS "生產數量"
  ,CASE 
   WHEN '0' THEN N'未排程，目前排程結果未考慮此限制'
   WHEN '1' THEN N'已排程，目前排程結果已考慮此限制'
   ELSE ""
   END AS "排程否"

FROM CRPML
