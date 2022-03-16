--LANGUAGE_多國語言字詞檔
SELECT
  ,CHS AS "中文簡體"
  ,CHT AS "中文繁體"
  ,ENG AS "英文"
  ,CASE 
   WHEN '1' THEN N'鼎新預設'
   WHEN '2' THEN N'客製化'
   WHEN '3' THEN N'客戶自訂'
   ELSE ""
   END AS "類別"
  ,MALA AS "馬來文"
  ,THAI AS "泰文"
  ,VIET AS "越南文"

FROM LANGUAGE
