--ACTMD_部門科目各期金額檔
SELECT
  ,MD001 AS "科目編號"
  ,MD002 AS "部門代號"
  ,MD003 AS "會計年度"
  ,MD004 AS "期別"
  ,MD005 AS "本幣借方金額"
  ,MD006 AS "本幣貸方金額"
  ,MD007 AS "幣別"
  ,MD008 AS "原幣借方金額"
  ,MD009 AS "原幣貸方金額"

FROM ACTMD
