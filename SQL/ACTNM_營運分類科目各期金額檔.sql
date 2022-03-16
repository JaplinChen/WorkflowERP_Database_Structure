--ACTNM_營運分類科目各期金額檔
SELECT
  ,NM001 AS "科目編號"
  ,NM002 AS "營運分類一"
  ,NM003 AS "營運分類二"
  ,NM004 AS "營運分類三"
  ,NM007 AS "會計年度"
  ,NM008 AS "期別"
  ,NM009 AS "本幣借方金額"
  ,NM010 AS "本幣貸方金額"
  ,NM011 AS "幣別"
  ,NM012 AS "原幣借方金額"
  ,NM013 AS "原幣貸方金額"
  ,NM014 AS "營運分類一名稱"
  ,NM015 AS "營運分類二名稱"
  ,NM016 AS "營運分類三名稱"
  ,NM026 AS "關係人"

FROM ACTNM
