--CMSNE_帳號對象資料檔
SELECT
  ,NE001 AS "銀行行號"
  ,NE002 AS "銀行帳號"
  ,CASE 
   WHEN '1' THEN N'公司'
   WHEN '2' THEN N'廠商'
   WHEN '3' THEN N'人員'
   WHEN '4' THEN N'客戶'
   WHEN '9' THEN N'其它'
   ELSE ""
   END AS "帳號對象"
  ,NE004 AS "對象代號"
  ,NE005 AS "對象簡稱"
  ,NE006 AS "統編/身份證號"
  ,NE007 AS "戶名"
  ,NE008 AS "聯絡人(一)"
  ,CASE 
   WHEN '1' THEN N'EDI'
   WHEN '2' THEN N'扣帳時FAX'
   WHEN '3' THEN N'不通知'
   WHEN '4' THEN N'預約及扣帳時FAX'
   WHEN '5' THEN N'預約時FAX'
   WHEN '6' THEN N'MAIL及預約/扣帳時FAX'
   ELSE ""
   END AS "入帳通知"
  ,NE010 AS "FAX_NO"
  ,NE011 AS "TEL_NO(一)"
  ,NE012 AS "TEL_NO(二)"
  ,NE013 AS "E-Mail"
  ,NE014 AS "聯絡人(二)"
  ,NE015 AS "聯絡人(三)"
  ,NE020 AS "國家別"
  ,NE021 AS "備註"

FROM CMSNE
