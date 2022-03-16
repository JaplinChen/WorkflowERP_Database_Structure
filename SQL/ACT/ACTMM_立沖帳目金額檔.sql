--ACTMM_立沖帳目金額檔
SELECT
  ,MM001 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'立沖帳目(一)'
   WHEN '2' THEN N'立沖帳目(二)'
   ELSE ""
   END AS "立沖帳目順序"
  ,MM003 AS "立沖帳目代號"
  ,MM004 AS "會計年度"
  ,MM005 AS "期別"
  ,MM006 AS "借方金額"
  ,MM007 AS "貸方金額"
  ,MM008 AS "借方筆數"
  ,MM009 AS "貸方筆數"

FROM ACTMM
