--QMSMD_品管類別資料檔
SELECT
  ,MD001 AS "品管類別"
  ,MD002 AS "類別名稱"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'減量'
   WHEN '2' THEN N'正常'
   WHEN '3' THEN N'加嚴'
   WHEN '4' THEN N'全檢 DEFAULT '2''
   ELSE ""
   END AS "檢驗方式"
  ,MD004 AS "AQL-CR"
  ,MD005 AS "AQL-MA"
  ,MD006 AS "AQL-MI"
  ,MD007 AS "備註"
  ,MD008 AS "檢驗人員"

FROM QMSMD
