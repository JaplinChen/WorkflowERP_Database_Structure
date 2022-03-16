--ADMMC_檔案資料
SELECT
  ,MC001 AS "檔案代碼"
  ,MC002 AS "檔案名稱"
  ,CASE 
   WHEN '1' THEN N'主檔單頭,'
   WHEN '2' THEN N'主檔單身,'
   WHEN '3' THEN N'交易單頭檔,'
   WHEN '4' THEN N'交易單身檔,'
   WHEN '5' THEN N'交易記錄檔,'
   WHEN '6' THEN N'月檔或統計檔,'
   WHEN '7' THEN N'系統檔案,'
   WHEN '8' THEN N'其他'
   ELSE ""
   END AS "類型"
  ,MC004 AS "系統代號"
  ,MC005 AS "備註"

FROM ADMMC
