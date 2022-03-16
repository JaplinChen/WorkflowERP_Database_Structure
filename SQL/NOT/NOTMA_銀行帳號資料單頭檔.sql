--NOTMA_銀行帳號資料單頭檔
SELECT
  ,MA001 AS "銀行代號"
  ,MA002 AS "簡稱"
  ,MA003 AS "銀行全名"
  ,MA004 AS "銀行帳號"
  ,MA005 AS "銀行存款科目"
  ,MA006 AS "銀行行號"
  ,MA007 AS "聯絡人"
  ,MA008 AS "電話"
  ,MA009 AS "地址(一)"
  ,MA010 AS "地址(二)"
  ,MA011 AS "備償帳戶"
  ,CASE 
   WHEN '1' THEN N'活存'
   WHEN '2' THEN N'支存'
   WHEN '3' THEN N'其他'
   ELSE ""
   END AS "存款種類"
  ,MA013 AS "備註"
  ,MA014 AS "FAX_NO"
  ,MA015 AS "戶名"
  ,MA016 AS "統編/身份證號"
  ,MA017 AS "銀行英文全名"
  ,MA018 AS "英文地址(一)"
  ,MA019 AS "英文地址(二)"
  ,MA020 AS "SWIFT"
  ,MA021 AS "ACCNO"
  ,MA022 AS "BENEFICIARY"

FROM NOTMA
