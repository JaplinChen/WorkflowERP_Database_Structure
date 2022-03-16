--PURTR_詢價審核單身資料檔
SELECT
  ,TR001 AS "請購單別"
  ,TR002 AS "請購單號"
  ,TR003 AS "請購序號"
  ,TR004 AS "供應廠商"
  ,TR005 AS "詢價數量"
  ,TR006 AS "詢價單位"
  ,TR007 AS "詢價幣別"
  ,TR008 AS "廠商報價"
  ,TR009 AS "報價金額"
  ,TR010 AS "核准"
  ,TR011 AS "備註"
  ,TR012 AS "確認碼"
  ,TR013 AS "確認執行碼"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "交易條件"
  ,TR021 AS "營業稅率"
  ,TR022 AS "單身多稅率"

FROM PURTR
