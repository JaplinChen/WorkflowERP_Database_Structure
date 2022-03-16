--INVMI_屬性代碼設定單頭檔
SELECT
  ,MI001 AS "屬性代碼"
  ,MI002 AS "屬性名稱"
  ,MI003 AS "位數"
  ,CASE 
   WHEN '1' THEN N'依單身定義'
   WHEN '2' THEN N'僅限定區間'
   ELSE ""
   END AS "使用方式"
  ,MI005 AS "起始區間"
  ,MI006 AS "截止區間"
  ,MI007 AS "備註"

FROM INVMI
