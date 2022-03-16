--CRPMK_鎖定製程時間檔
SELECT
  ,MK001 AS "製令單別"
  ,MK002 AS "製令單號"
  ,MK003 AS "途程品號"
  ,MK004 AS "途程代號"
  ,MK005 AS "加工順序"
  ,MK006 AS "製程代號"
  ,MK007 AS "資源編號"
  ,CASE 
   WHEN '0' THEN N'不鎖定時間'
   WHEN '1' THEN N'鎖定開始時間'
   WHEN '2' THEN N'鎖定結束時間'
   WHEN '3' THEN N'鎖定開始時間和結束時間'
   ELSE ""
   END AS "鎖定碼"
  ,MK009 AS "開始時間"
  ,MK010 AS "結束時間"
  ,CASE 
   WHEN '0' THEN N'未排程，目前排程結果未考慮此限制'
   WHEN '1' THEN N'已排程，目前排程結果已考慮此限制'
   ELSE ""
   END AS "排程否"

FROM CRPMK
