--VPAUE_員工帳號異動記錄檔
SELECT
  ,UE001 AS "銀行行號"
  ,UE002 AS "銀行帳號"
  ,CASE 
   WHEN '1' THEN N'公司'
   WHEN '2' THEN N'廠商'
   WHEN '3' THEN N'人員'
   WHEN '4' THEN N'客戶'
   WHEN '9' THEN N'其它'
   ELSE ""
   END AS "帳號對象"
  ,UE004 AS "對象代號"
  ,UE005 AS "對象簡稱"
  ,UE006 AS "統編/身份證號"
  ,UE007 AS "戶名"
  ,UE008 AS "聯絡人(一)"
  ,CASE 
   WHEN '1' THEN N'EDI'
   WHEN '2' THEN N'扣帳時FAX'
   WHEN '3' THEN N'不通知'
   WHEN '4' THEN N'預約及扣帳時FAX'
   WHEN '5' THEN N'預約時FAX'
   ELSE ""
   END AS "入帳通知"
  ,UE010 AS "FAX_NO"
  ,UE011 AS "TEL_NO(一)"
  ,UE012 AS "TEL_NO(二)"
  ,UE013 AS "E-Mail"
  ,UE014 AS "聯絡人(二)"
  ,UE015 AS "聯絡人(三)"
  ,UE020 AS "國家別"

FROM VPAUE
