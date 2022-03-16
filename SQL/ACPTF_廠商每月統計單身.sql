--ACPTF_廠商每月統計單身
SELECT
  ,TF001 AS "廠商代號"
  ,TF002 AS "統計年月"
  ,CASE 
   WHEN '1' THEN N'應付'
   WHEN '2' THEN N'預付'
   WHEN '3' THEN N'溢付'
   ELSE ""
   END AS "類別"
  ,TF004 AS "單別"
  ,TF005 AS "幣別"
  ,TF006 AS "原幣期初金額"
  ,TF007 AS "原幣本期借方金額"
  ,TF008 AS "原幣本期貸方金額"
  ,TF009 AS "本幣期初金額"
  ,TF010 AS "本幣本期借方金額"
  ,TF011 AS "本幣本期貸方金額"

FROM ACPTF
