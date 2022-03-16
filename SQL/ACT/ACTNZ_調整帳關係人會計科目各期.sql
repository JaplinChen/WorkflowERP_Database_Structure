--ACTNZ_調整帳關係人會計科目各期
SELECT
  ,NZ001 AS "科目編號"
  ,NZ002 AS "會計年度"
  ,NZ003 AS "期別"
  ,NZ004 AS "本幣借方金額"
  ,NZ005 AS "本幣貸方金額"
  ,NZ006 AS "幣別"
  ,NZ007 AS "原幣借方金額"
  ,NZ008 AS "原幣貸方金額"
  ,NZ009 AS "關係人"
  ,NZ015 AS "帳別代號"

FROM ACTNZ
