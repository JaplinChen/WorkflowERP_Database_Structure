--CRPMA_CRP設定作業檔
SELECT
  ,MA001 AS "識別碼"
  ,MA002 AS "識別名稱"
  ,CASE 
   WHEN '0' THEN N'預設'
   WHEN '1' THEN N'覆蓋'
   ELSE ""
   END AS "群組碼"
  ,MA004 AS "識別碼數值"
  ,CASE 
   WHEN '1' THEN N'生產線'
   WHEN '2' THEN N'機台'
   ELSE ""
   END AS "資源類型"

FROM CRPMA
