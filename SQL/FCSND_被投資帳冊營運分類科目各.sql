--FCSND_被投資帳冊營運分類科目各
SELECT
  ,ND001 AS "科目編號"
  ,ND002 AS "營運分類一"
  ,ND003 AS "營運分類二"
  ,ND004 AS "營運分類三"
  ,ND007 AS "會計年度"
  ,ND008 AS "期別"
  ,ND009 AS "本幣借方金額"
  ,ND010 AS "本幣貸方金額"
  ,ND011 AS "幣別"
  ,ND012 AS "原幣借方金額"
  ,ND013 AS "原幣貸方金額"
  ,ND014 AS "營運分類一名稱"
  ,ND015 AS "營運分類二名稱"
  ,ND016 AS "營運分類三名稱"
  ,ND026 AS "關係人"
  ,ND027 AS "公司代號"
  ,ND028 AS "帳別代號"

FROM FCSND
