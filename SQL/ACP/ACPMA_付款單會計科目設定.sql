--ACPMA_付款單會計科目設定
SELECT
 MA001 AS 一般付款科目  ,MA003 AS "應付票據科目"
  ,MA005 AS "借方差額科目"
  ,MA007 AS "貸方差額科目"
  ,MA009 AS "折讓科目"
  ,MA011 AS "預付科目"
  ,MA012 AS "溢付科目"
  ,MA013 AS "預約付款科目"

FROM ACPMA
