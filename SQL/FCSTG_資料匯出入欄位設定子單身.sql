--FCSTG_資料匯出入欄位設定子單身
SELECT
  ,TG001 AS "檔案代號"
  ,CASE 
   WHEN '1' THEN N'匯入'
   WHEN '2' THEN N'匯出'
   ELSE ""
   END AS "類型"
  ,TG003 AS "序號"
  ,TG004 AS "轉換序號"
  ,CASE 
   WHEN 'C' THEN N'Char '
   WHEN 'N' THEN N'Numeric '
   WHEN 'D' THEN N'Datetime'
   ELSE ""
   END AS "原值欄位型態"
  ,TG006 AS "原值"
  ,CASE 
   WHEN 'C' THEN N'Char '
   WHEN 'N' THEN N'Numeric '
   WHEN 'D' THEN N'Datetime'
   ELSE ""
   END AS "轉換值欄位型態"
  ,TG008 AS "轉換值"
  ,TG009 AS "備註"
  ,TG010 AS "公司代號"

FROM FCSTG
