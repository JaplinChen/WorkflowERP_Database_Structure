--FTSMB_檔案傳輸設定檔
SELECT
  ,MB001 AS "檔案代號"
  ,CASE 
   WHEN '1' THEN N'不處理'
   WHEN '2' THEN N'匯出'
   WHEN '3' THEN N'匯入'
   ELSE ""
   END AS "傳輸狀態"
  ,MB003 AS "內容"
  ,CASE 
   WHEN '1' THEN N'基本資料'
   WHEN '2' THEN N'單據'
   ELSE ""
   END AS "類別"
  ,MB005 AS "備註"

FROM FTSMB
