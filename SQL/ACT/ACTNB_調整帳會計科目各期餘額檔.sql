--ACTNB_調整帳會計科目各期餘額檔
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
  ,NB011 AS "帳別代號"

FROM ACTNB
