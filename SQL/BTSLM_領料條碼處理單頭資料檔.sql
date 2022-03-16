--BTSLM_領料條碼處理單頭資料檔
SELECT
  ,LM001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'製令領料,'
   WHEN '2' THEN N'製令合併領料表領料,'
   WHEN '3' THEN N'領料單領料,'
   WHEN '4' THEN N'合併領料檢料表'
   ELSE ""
   END AS "作業種類"
  ,LM003 AS "處理狀態"
  ,LM004 AS "工作日期"
  ,LM005 AS "使用者代號"
  ,LM008 AS "異常碼"

FROM BTSLM
