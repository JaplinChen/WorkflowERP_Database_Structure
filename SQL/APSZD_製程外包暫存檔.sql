--APSZD_製程外包暫存檔
SELECT
  ,ZD001 AS "廠別代號"
  ,ZD002 AS "製令編號"
  ,ZD003 AS "途程編號"
  ,ZD004 AS "加工順序"
  ,ZD005 AS "製程代號"
  ,ZD006 AS "加工廠商"
  ,CASE 
   WHEN '1' THEN N'固定期間'
   WHEN '2' THEN N'固定開始結束時間'
   ELSE ""
   END AS "外包類型"
  ,ZD008 AS "開始時間"
  ,ZD009 AS "結束時間"
  ,ZD010 AS "作業時間"
  ,CASE 
   WHEN '0' THEN N'未排程，目前排程結果未考慮此限制'
   WHEN '1' THEN N'已排程，目前排程結果已考慮此限制'
   ELSE ""
   END AS "排程否"
  ,ZD012 AS "廠商序號"
  ,ZD013 AS "外包數量"

FROM APSZD
