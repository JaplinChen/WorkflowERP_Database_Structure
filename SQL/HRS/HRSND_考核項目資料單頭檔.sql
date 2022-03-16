--HRSND_考核項目資料單頭檔
SELECT
  ,ND001 AS "分類代號"
  ,ND002 AS "項目代號"
  ,ND003 AS "項目名稱"
  ,ND004 AS "項目說明"
  ,CASE 
   WHEN '0' THEN N'自訂'
   WHEN '1' THEN N'獎懲'
   WHEN '2' THEN N'請休假'
   WHEN '3' THEN N'遲到早退'
   ELSE ""
   END AS "項目類別"
  ,ND006 AS "最高給分"
  ,ND007 AS "低標分數(一)"
  ,ND008 AS "低標分數(二)"
  ,ND009 AS "低標分數(三)"
  ,ND010 AS "低標分數(四)"
  ,ND011 AS "低標分數(五)"

FROM HRSND
