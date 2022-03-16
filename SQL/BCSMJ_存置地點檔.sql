--BCSMJ_存置地點檔
SELECT
  ,MJ001 AS "地點代號"
  ,MJ002 AS "地點名稱"
  ,CASE 
   WHEN '1' THEN N'驗收區'
   WHEN '2' THEN N'原料倉'
   WHEN '3' THEN N'生產線'
   WHEN '4' THEN N'成品倉庫'
   ELSE ""
   END AS "存放區別"
  ,MJ004 AS "存檔時庫存量不足准許出庫"
  ,MJ005 AS "確認時庫存量不足准許出庫"

FROM BCSMJ
