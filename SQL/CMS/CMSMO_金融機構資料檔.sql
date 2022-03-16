--CMSMO_金融機構資料檔
SELECT
  ,MO001 AS "金融機構代號"
  ,CASE 
   WHEN '1' THEN N'本國銀行'
   WHEN '2' THEN N'外國銀行'
   WHEN '3' THEN N'信託投資'
   WHEN '4' THEN N'票券金融'
   WHEN '5' THEN N'信用合作社'
   WHEN '6' THEN N'產物保險'
   WHEN '7' THEN N'漁會信用'
   WHEN '8' THEN N'農會信用'
   WHEN '9' THEN N'郵局'
   ELSE ""
   END AS "金融機構種類"
  ,MO003 AS "金融機構總行"
  ,MO004 AS "SWIFT"
  ,MO005 AS "金融機構分行"
  ,MO006 AS "金融機構名稱"
  ,MO007 AS "入帳日數"
  ,MO008 AS "地址"

FROM CMSMO
