--ACTMJ_科目部門預算單頭檔
SELECT
  ,MJ001 AS "預算編號"
  ,MJ002 AS "會計年度"
  ,MJ003 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'全公司'
   WHEN '2' THEN N'部門'
   ELSE ""
   END AS "預算種類"
  ,MJ005 AS "部門代號"
  ,CASE 
   WHEN '1' THEN N'借餘'
   WHEN '-1' THEN N'貸餘'
   ELSE ""
   END AS "科目餘額別"
  ,MJ007 AS "年度預算"
  ,MJ008 AS "備註"
  ,CASE 
   WHEN 'N' THEN N'不需要'
   WHEN 'Y' THEN N'拒絕'
   WHEN 'W' THEN N'警告'
   ELSE ""
   END AS "預算超限管理"
  ,CASE 
   WHEN 'Y' THEN N'年'
   WHEN 'N' THEN N'期'
   ELSE ""
   END AS "可用預算依據"
  ,MJ011 AS "追加金額"
  ,MJ012 AS "挪用金額"
  ,MJ016 AS "可用預算"
  ,MJ022 AS "指定結案"
  ,MJ023 AS "後置單據跨年,不佔用本年度預算"

FROM ACTMJ
