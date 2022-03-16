--ACTNC_調整帳部門科目各期金額檔
SELECT
  ,NC001 AS "科目編號"
  ,NC002 AS "部門代號"
  ,NC003 AS "會計年度"
  ,NC004 AS "期別"
  ,NC005 AS "本幣借方金額"
  ,NC006 AS "本幣貸方金額"
  ,NC007 AS "幣別"
  ,NC008 AS "原幣借方金額"
  ,NC009 AS "原幣貸方金額"
  ,NC010 AS "帳別代號"

FROM ACTNC
