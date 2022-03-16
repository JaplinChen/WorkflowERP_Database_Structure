--ACTNN_多帳本營運分類科目各期金
SELECT
  ,NN001 AS "帳別代號"
  ,NN002 AS "科目編號"
  ,NN003 AS "營運分類一"
  ,NN004 AS "營運分類二"
  ,NN005 AS "營運分類三"
  ,NN008 AS "會計年度"
  ,NN009 AS "期別"
  ,NN010 AS "本幣借方金額"
  ,NN011 AS "本幣貸方金額"
  ,NN012 AS "幣別"
  ,NN013 AS "原幣借方金額"
  ,NN014 AS "原幣貸方金額"
  ,NN015 AS "營運分類一名稱"
  ,NN016 AS "營運分類二名稱"
  ,NN017 AS "營運分類三名稱"

FROM ACTNN
