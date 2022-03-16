--CRPMN_製程外包檔
SELECT
  ,MN001 AS "製令單別"
  ,MN002 AS "製令單號"
  ,MN003 AS "途程品號"
  ,MN004 AS "途程代號"
  ,MN005 AS "加工順序"
  ,MN006 AS "製程代號"
  ,MN007 AS "加工廠商"
  ,CASE 
   WHEN '1' THEN N'固定期間'
   WHEN '2' THEN N'固定開始結束時間'
   ELSE ""
   END AS "外包類型"
  ,MN009 AS "開始時間"
  ,MN010 AS "結束時間"
  ,MN011 AS "作業時間"
  ,CASE 
   WHEN '0' THEN N'未排程，目前排程結果未考慮此限制'
   WHEN '1' THEN N'已排程，目前排程結果已考慮此限制'
   ELSE ""
   END AS "排程否"

FROM CRPMN
