--PURMD_廠商品號特殊檢驗方式檔
SELECT
  ,MD001 AS "廠商代號"
  ,MD002 AS "品號"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'減量'
   WHEN '2' THEN N'正常'
   WHEN '3' THEN N'加嚴'
   WHEN '4' THEN N'全檢 DEFAULT '2''
   ELSE ""
   END AS "檢驗方式"
  ,MD004 AS "檢驗記錄"
  ,MD005 AS "備註"
  ,MD006 AS "製程代號"
  ,CASE 
   WHEN '1' THEN N'已核准'
   WHEN '2' THEN N'尚待核准'
   WHEN '3' THEN N'不准交易'
   ELSE ""
   END AS "核准狀況"

FROM PURMD
