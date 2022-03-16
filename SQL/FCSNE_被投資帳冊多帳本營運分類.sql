--FCSNE_被投資帳冊多帳本營運分類
SELECT
  ,NE001 AS "帳別代號"
  ,NE002 AS "科目編號"
  ,NE003 AS "營運分類一"
  ,NE004 AS "營運分類二"
  ,NE005 AS "營運分類三"
  ,NE008 AS "會計年度"
  ,NE009 AS "期別"
  ,NE010 AS "本幣借方金額"
  ,NE011 AS "本幣貸方金額"
  ,NE012 AS "幣別"
  ,NE013 AS "原幣借方金額"
  ,NE014 AS "原幣貸方金額"
  ,NE015 AS "營運分類一名稱"
  ,NE016 AS "營運分類二名稱"
  ,NE017 AS "營運分類三名稱"
  ,NE027 AS "關係人"
  ,NE028 AS "公司代號"

FROM FCSNE
