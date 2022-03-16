--ACRTI_發票彙開單頭檔
SELECT
  ,TI001 AS "客戶代號"
  ,TI002 AS "發票日期"
  ,TI003 AS "廠別"
  ,TI004 AS "稅別碼"
  ,TI005 AS "課稅別"
  ,TI006 AS "發票聯數"
  ,TI007 AS "發票號碼(起)"
  ,TI008 AS "發票號碼(迄)"
  ,TI009 AS "申報年月"
  ,TI010 AS "多發票"
  ,TI011 AS "發票號碼產生方式"
  ,TI012 AS "營業稅率"
  ,TI013 AS "幣別"
  ,TI014 AS "發票貨款"
  ,TI015 AS "發票稅額"
  ,TI016 AS "折讓單日期"
  ,TI017 AS "發票作廢"
  ,TI018 AS "發票張數"
  ,TI019 AS "確認碼"
  ,TI020 AS "確認者"

FROM ACRTI
