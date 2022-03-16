--FCSNB_被投資帳冊會計科目各期餘
SELECT
  ,NB001 AS "科目編號"
  ,NB002 AS "會計年度"
  ,NB003 AS "期別"
  ,NB004 AS "本幣借方金額"
  ,NB005 AS "本幣貸方金額"
  ,NB006 AS "借方筆數"
  ,NB007 AS "貸方筆數"
  ,NB008 AS "幣別"
  ,NB009 AS "原幣借方金額"
  ,NB010 AS "原幣貸方金額"
  ,NB017 AS "公司代號"
  ,NB018 AS "帳別代號"

FROM FCSNB
