--FCSMP_合併前營運分類科目各期餘
SELECT
  ,MP001 AS "科目編號"
  ,MP002 AS "營運分類一"
  ,MP003 AS "營運分類二"
  ,MP004 AS "營運分類三"
  ,MP007 AS "會計年度"
  ,MP008 AS "期別"
  ,MP009 AS "本幣借方金額"
  ,MP010 AS "本幣貸方金額"
  ,MP011 AS "幣別"
  ,MP012 AS "原幣借方金額"
  ,MP013 AS "原幣貸方金額"
  ,MP014 AS "營運分類一名稱"
  ,MP015 AS "營運分類二名稱"
  ,MP016 AS "營運分類三名稱"
  ,MP021 AS "公司代號"
  ,MP022 AS "帳別代號"
  ,MP028 AS "關係人"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,MP030 AS "合併代號"

FROM FCSMP
