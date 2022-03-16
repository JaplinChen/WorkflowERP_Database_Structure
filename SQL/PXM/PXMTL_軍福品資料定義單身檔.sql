--PXMTL_軍福品資料定義單身檔
SELECT
  ,CASE 
   WHEN '1' THEN N'福利總處'
   WHEN '2' THEN N'全聯社'
   WHEN '3' THEN N'縣市聯社'
   WHEN '4' THEN N'福利總處-副食'
   ELSE ""
   END AS "營站分類"
  ,CASE 
   WHEN '1' THEN N'單頭'
   WHEN '2' THEN N'單身'
   ELSE ""
   END AS "資料區分"
  ,TL003 AS "檔案代碼"
  ,TL004 AS "欄位編號"
  ,TL005 AS "起始位置"
  ,TL006 AS "截止位置"
  ,TL007 AS "文字檔長度"
  ,TL008 AS "備註"

FROM PXMTL
