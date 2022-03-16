--CRPMM_製令外包檔
SELECT
  ,MM001 AS "製令單別"
  ,MM002 AS "製令單號"
  ,MM003 AS "加工廠商"
  ,CASE 
   WHEN '1' THEN N'固定期間'
   WHEN '2' THEN N'固定開始結束時間'
   ELSE ""
   END AS "外包類型"
  ,MM005 AS "開始時間"
  ,MM006 AS "結束時間"
  ,MM007 AS "作業時間"
  ,CASE 
   WHEN '0' THEN N'未排程，目前排程結果未考慮此限制'
   WHEN '1' THEN N'已排程，目前排程結果已考慮此限制'
   ELSE ""
   END AS "排程否"

FROM CRPMM
