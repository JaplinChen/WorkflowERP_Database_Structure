--LRPMA_批次計劃設定檔
SELECT
  ,CASE 
   WHEN '2' THEN N'請購單'
   WHEN '1' THEN N'採購單'
   ELSE ""
   END AS "採購計劃發放依據"
  ,MA002 AS "急料條件-採購"
  ,MA003 AS "急料條件-生產"

FROM LRPMA
