--CSTMJ_線別成本分攤比率單頭檔
SELECT
  ,MJ001 AS "年月"
  ,MJ002 AS "會計科目"
  ,MJ003 AS "部門代號"
  ,CASE 
   WHEN '0' THEN N'人工成本'
   WHEN '1' THEN N'製造費用一'
   WHEN '2' THEN N'製造費用二'
   WHEN '3' THEN N'製造費用三'
   WHEN '4' THEN N'製造費用四'
   WHEN '5' THEN N'製造費用五'
   ELSE ""
   END AS "分攤類別"
  ,CASE 
   WHEN '1' THEN N'固定比率'
   WHEN '2' THEN N'線別時數'
   ELSE ""
   END AS "分攤方式"
  ,MJ006 AS "科目餘額"

FROM CSTMJ
