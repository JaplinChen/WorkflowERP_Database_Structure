--PURTY_請購單子單身資料檔
SELECT
  ,TY001 AS "單別"
  ,TY002 AS "單號"
  ,TY003 AS "序號"
  ,TY004 AS "分批序號"
  ,TY005 AS "庫別"
  ,TY006 AS "供應廠商"
  ,TY007 AS "採購數量"
  ,TY008 AS "採購幣別"
  ,TY009 AS "採購單價"
  ,TY010 AS "採購金額"
  ,TY011 AS "交貨日"
  ,TY012 AS "鎖定碼"
  ,TY013 AS "採購單號"
  ,TY014 AS "製造商"
  ,TY015 AS "備註"
  ,TY016 AS "採購人員"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TY018 AS "急料"
  ,TY019 AS "承認型號"
  ,TY020 AS "採購包裝數量"
  ,TY021 AS "結案碼"
  ,TY022 AS "採購碼"
  ,TY031 AS "稅別碼"
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
  ,TY033 AS "CODE"
  ,TY034 AS "WAFER_BANK_PO單別"
  ,TY035 AS "WAFER_BANK_PO單號"
  ,TY036 AS "WAFER_BANK_PO序號"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TY038 AS "請購金額"
  ,TY039 AS "營業稅率"
  ,TY040 AS "單身多稅率"

FROM PURTY
