--IDLMZ_測試工具資料檔
SELECT
  ,MZ001 AS "品號"
  ,CASE 
   WHEN '1' THEN N'ProCard'
   WHEN '2' THEN N'Program'
   ELSE ""
   END AS "類型"
  ,MZ003 AS "測試工具代號"
  ,MZ004 AS "測試工具名稱"
  ,MZ005 AS "備註"
  ,MZ006 AS "序號"
  ,MZ010 AS "確認版次"

FROM IDLMZ
