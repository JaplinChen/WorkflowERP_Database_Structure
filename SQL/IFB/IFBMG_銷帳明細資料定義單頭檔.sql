--IFBMG_銷帳明細資料定義單頭檔
SELECT
  ,MG001 AS "銀行行號"
  ,MG002 AS "備註"
  ,CASE 
   WHEN '4' THEN N'民國年YYMMDD'
   WHEN '1' THEN N'西元年 YYYYMMDD'
   ELSE ""
   END AS "年別"
  ,MG004 AS "帳號起始位置"
  ,MG005 AS "帳號截止位置"
  ,MG006 AS "交易日期起始位置"
  ,MG007 AS "交易日期截止位置"
  ,MG008 AS "交易序號起始位置"
  ,MG009 AS "交易序號截止位置"
  ,MG010 AS "交易幣別起始位置"
  ,MG011 AS "交易幣別截止位置"
  ,MG012 AS "借方金額起始位置"
  ,MG013 AS "借方金額截止位置"
  ,MG014 AS "借方金額正負位置"
  ,MG015 AS "貸方金額起始位置"
  ,MG016 AS "貸方金額截止位置"
  ,MG017 AS "貸方金額正負位置"
  ,MG018 AS "餘額起始位置"
  ,MG019 AS "餘額截止位置"
  ,MG020 AS "餘額正負位置"
  ,MG021 AS "金額含小數位數"
  ,MG022 AS "金額含小數點"
  ,MG023 AS "支票號碼起始位置"
  ,MG024 AS "支票號碼截止位置"
  ,MG025 AS "交易代碼起始位置"
  ,MG026 AS "交易代碼截止位置"
  ,MG027 AS "媒體檔名"
  ,CASE 
   WHEN '1' THEN N'借貸金額分開'
   WHEN '2' THEN N'依借貸別區分'
   ELSE ""
   END AS "金額定義"
  ,MG029 AS "借貸別起始位置"
  ,MG030 AS "借貸別截止位置"
  ,MG031 AS "借貸金額起始位置"
  ,MG032 AS "借貸金額截止位置"
  ,MG033 AS "借貸金額正負位置"
  ,MG034 AS "備註起始位置"
  ,MG035 AS "備註截止位置"

FROM IFBMG
