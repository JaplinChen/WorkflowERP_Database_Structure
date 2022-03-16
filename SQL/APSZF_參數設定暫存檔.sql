--APSZF_參數設定暫存檔
SELECT
  ,ZF001 AS "廠別代號"
  ,ZF002 AS "識別碼"
  ,ZF003 AS "識別名稱"
  ,CASE 
   WHEN '0' THEN N'預設'
   WHEN '1' THEN N'覆蓋'
   ELSE ""
   END AS "群組碼"
  ,ZF005 AS "識別碼數值"
  ,ZF006 AS "參數值說明"

FROM APSZF
