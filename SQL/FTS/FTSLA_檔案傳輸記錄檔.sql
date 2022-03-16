--FTSLA_檔案傳輸記錄檔
SELECT
  ,LA001 AS "傳送公司代號"
  ,LA002 AS "檔案名稱"
  ,CASE 
   WHEN '1' THEN N'待匯入'
   WHEN '2' THEN N'匯入成功'
   WHEN 'A' THEN N'檔案不存在'
   WHEN 'B' THEN N'檔案大小不合'
   WHEN 'C' THEN N'匯入未成功'
   WHEN 'D' THEN N'檔案毀損'
   WHEN 'E' THEN N'解壓失敗'
   WHEN 'F' THEN N'重複匯入'
   ELSE ""
   END AS "狀況碼"
  ,LA004 AS "檔案大小"
  ,LA005 AS "檔案匯出日期"

FROM FTSLA
