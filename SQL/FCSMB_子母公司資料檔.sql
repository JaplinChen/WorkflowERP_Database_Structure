--FCSMB_子母公司資料檔
SELECT
  ,MB001 AS "子公司代號"
  ,MB002 AS "子公司名稱"
  ,MB003 AS "記帳幣別"
  ,MB004 AS "母公司投資比率"
  ,MB005 AS "備註"
  ,MB011 AS "功能幣別"
  ,CASE 
   WHEN '1' THEN N'記帳幣別'
   WHEN '2' THEN N'功能幣別'
   ELSE ""
   END AS "合併幣來源"
  ,MB013 AS "投資股數"
  ,MB014 AS "股本"
  ,MB015 AS "關係人代號"
  ,MB016 AS "母公司關係人"
  ,MB017 AS "最近投資日"
  ,MB019 AS "來源為資料庫(子公司)"
  ,MB020 AS "來源為資料庫(母公司)"
  ,MB021 AS "母公司代號"
  ,MB022 AS "母公司名稱"

FROM FCSMB
