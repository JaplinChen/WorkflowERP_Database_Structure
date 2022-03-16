--PXMTK_軍福品資料定義單頭檔
SELECT
  ,CASE 
   WHEN '1' THEN N'福利總處'
   WHEN '2' THEN N'全聯社'
   WHEN '3' THEN N'縣市聯社'
   WHEN '4' THEN N'福利總處-副食'
   ELSE ""
   END AS "營站分類"
  ,TK002 AS "文字檔來源資料所在UNC目錄"
  ,TK003 AS "單價含稅"
  ,TK004 AS "備註"
  ,TK005 AS "轉入成功資料所在UNC目錄"
  ,TK006 AS "轉入失敗資料所在UNC目錄"
  ,TK007 AS "文字檔資料總長度"

FROM PXMTK
