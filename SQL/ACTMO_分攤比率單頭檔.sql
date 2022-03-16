--ACTMO_分攤比率單頭檔
SELECT
  ,MO001 AS "分攤代號"
  ,MO002 AS "順序別"
  ,MO003 AS "分攤類別"
  ,MO004 AS "生效日期"
  ,MO005 AS "失效日期"
  ,CASE 
   WHEN '1' THEN N'固定比率'
   WHEN '2' THEN N'變動比率'
   ELSE ""
   END AS "分攤方式"
  ,CASE 
   WHEN '1' THEN N'累計餘額'
   WHEN '2' THEN N'當期異動'
   ELSE ""
   END AS "餘額性質"
  ,MO008 AS "總帳傳票單別"
  ,MO009 AS "備註"
  ,MO010 AS "上次產生日期"
  ,MO011 AS "借方總比率"
  ,MO012 AS "貸方總比率"
  ,CASE 
   WHEN '1' THEN N'實際'
   WHEN '2' THEN N'預算'
   ELSE ""
   END AS "餘額來源"
  ,MO014 AS "預算編號"
  ,MO015 AS "上次產生傳票單別"
  ,MO016 AS "上次產生傳票單號"

FROM ACTMO
