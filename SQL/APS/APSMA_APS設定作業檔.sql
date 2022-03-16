--APSMA_APS設定作業檔
SELECT
  ,MA006 AS "參數值說明"
  ,MA032 AS "廠別代號"
  ,MA033 AS "識別碼"
  ,MA034 AS "識別名稱"
  ,CASE 
   WHEN '0' THEN N'預設'
   WHEN '1' THEN N'覆蓋'
   ELSE ""
   END AS "群組碼"
  ,MA036 AS "識別碼數值"
  ,MA037 AS "序號"
  ,MA038 AS "設定群組"

FROM APSMA
