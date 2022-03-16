--HRSMT_教育訓練編碼原則資料檔
SELECT
  ,CASE 
   WHEN '1' THEN N'訓練代號'
   WHEN '2' THEN N'課程代號'
   ELSE ""
   END AS "編碼類別"
  ,MT002 AS "編碼結果"
  ,MT003 AS "編碼代號"
  ,MT004 AS "編碼名稱"
  ,MT005 AS "編碼階層代碼"

FROM HRSMT
