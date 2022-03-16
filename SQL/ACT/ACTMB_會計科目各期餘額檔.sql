--ACTMB_會計科目各期餘額檔
SELECT
  ,MB001 AS "科目編號"
  ,MB002 AS "會計年度"
  ,MB003 AS "期別"
  ,MB004 AS "本幣借方金額"
  ,MB005 AS "本幣貸方金額"
  ,MB006 AS "借方筆數"
  ,MB007 AS "貸方筆數"
  ,MB008 AS "幣別"
  ,MB009 AS "原幣借方金額"
  ,MB010 AS "原幣貸方金額"

FROM ACTMB
