--IPSTH_報關贖單費用資料檔
SELECT
  ,TH001 AS "報關單別"
  ,TH002 AS "報關單號"
  ,TH003 AS "序號"
  ,TH004 AS "費用代號"
  ,TH005 AS "費用金額"
  ,TH006 AS "應付廠商代號"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TH008 AS "發票號碼"
  ,TH009 AS "會計科目"
  ,TH010 AS "成本歸屬"
  ,TH011 AS "結帳碼"
  ,TH012 AS "應付憑單別"
  ,TH013 AS "應付憑單號"
  ,TH014 AS "應付憑單序號"
  ,TH015 AS "備註"
  ,TH016 AS "付款條件代號"
  ,TH017 AS "稅款碼"
  ,TH023 AS "稅別碼"
  ,TH024 AS "註記號"

FROM IPSTH
