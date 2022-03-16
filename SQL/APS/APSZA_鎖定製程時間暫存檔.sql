--APSZA_鎖定製程時間暫存檔
SELECT
  ,ZA001 AS "廠別代號"
  ,ZA002 AS "製令編號"
  ,ZA003 AS "途程編號"
  ,ZA004 AS "加工順序"
  ,ZA005 AS "製程代號"
  ,ZA006 AS "資源編號"
  ,CASE 
   WHEN '0' THEN N'不鎖定時間'
   WHEN '1' THEN N'鎖定開始時間'
   WHEN '2' THEN N'鎖定結束時間'
   WHEN '3' THEN N'鎖定開始時間和結束時間'
   ELSE ""
   END AS "鎖定碼"
  ,ZA008 AS "開始時間"
  ,ZA009 AS "結束時間"
  ,CASE 
   WHEN '0' THEN N'未排程，目前排程結果未考慮此限制'
   WHEN '1' THEN N'已排程，目前排程結果已考慮此限制'
   ELSE ""
   END AS "排程否"
  ,ZA011 AS "平行機台"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"

FROM APSZA
