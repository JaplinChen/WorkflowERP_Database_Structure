--ACTMP_分攤比率單身檔
SELECT
  ,MP001 AS "分攤代號"
  ,MP002 AS "序號"
  ,CASE 
   WHEN '1' THEN N'借'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借/貸"
  ,MP004 AS "科目編號"
  ,MP005 AS "部門代號"
  ,MP006 AS "比率"
  ,MP007 AS "變動比率分子科目"
  ,MP008 AS "立沖帳目(一)"
  ,MP009 AS "立沖帳目(二)"
  ,MP010 AS "摘要"
  ,MP011 AS "專案代號"
  ,MP012 AS "備註"
  ,MP013 AS "預算編號"
  ,MP014 AS "立沖帳一名稱"
  ,MP015 AS "立沖帳二名稱"

FROM ACTMP
