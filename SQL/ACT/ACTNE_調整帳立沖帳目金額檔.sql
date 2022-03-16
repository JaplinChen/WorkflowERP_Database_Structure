--ACTNE_調整帳立沖帳目金額檔
SELECT
  ,NE001 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'立沖帳目(一)'
   WHEN '2' THEN N'立沖帳目(二)'
   ELSE ""
   END AS "立沖帳目順序"
  ,NE003 AS "立沖帳目代號"
  ,NE004 AS "會計年度"
  ,NE005 AS "期別"
  ,NE006 AS "借方金額"
  ,NE007 AS "貸方金額"
  ,NE008 AS "借方筆數"
  ,NE009 AS "貸方筆數"
  ,NE010 AS "帳別代號"

FROM ACTNE
