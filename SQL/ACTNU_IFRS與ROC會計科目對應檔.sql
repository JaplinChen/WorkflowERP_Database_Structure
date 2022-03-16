--ACTNU_IFRS與ROC會計科目對應檔
SELECT
  ,NU001 AS "行業別"
  ,NU002 AS "序號"
  ,NU003 AS "IFRS科目編號"
  ,NU004 AS "IFRS科目名稱"
  ,NU005 AS "IFRS科目別名"
  ,NU006 AS "ROC科目編號"
  ,CASE 
   WHEN '1' THEN N'統制帳戶'
   WHEN '2' THEN N'明細帳戶'
   WHEN '3' THEN N'獨立帳戶'
   WHEN '4' THEN N'分類'
   ELSE ""
   END AS "ROC科目類別"

FROM ACTNU
