--CMSMH_編碼原則資料檔
SELECT
  ,CASE 
   WHEN '1' THEN N'品號編碼'
   WHEN '2' THEN N'客戶編碼'
   WHEN '3' THEN N'廠商編碼'
   WHEN '4' THEN N'固定資產編碼'
   WHEN '5' THEN N'產品序號編碼'
   WHEN '6' THEN N'批號編碼'
   WHEN '7' THEN N'模具編碼'
   ELSE ""
   END AS "編碼類別"
  ,MH002 AS "編碼結果"
  ,MH003 AS "編碼代號"
  ,MH004 AS "編碼名稱"
  ,MH005 AS "編碼階層代碼"
  ,CASE 
   WHEN '1' THEN N'預設品名'
   WHEN '2' THEN N'預設規格'
   WHEN '3' THEN N'不預設'
   ELSE ""
   END AS "預設名稱"
  ,CASE 
   WHEN '1' THEN N'日編'
   WHEN '2' THEN N'月編'
   WHEN '3' THEN N'手動編'
   ELSE ""
   END AS "編碼方式"
  ,MH008 AS "年碼數"
  ,MH009 AS "流水號碼數"

FROM CMSMH
