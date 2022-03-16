--MPSTA_排程紀錄檔
SELECT
  ,TA001 AS "計劃批號"
  ,TA002 AS "廠別"
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'ForeCase(銷售預測)'
   WHEN '9' THEN N'全部'
   ELSE ""
   END AS "來源"
  ,TA004 AS "備註"
  ,TA005 AS "排程日期"
  ,TA006 AS "排程時間"

FROM MPSTA
