--ACRTJ_發票彙開單身檔
SELECT
  ,TJ001 AS "發票號碼(起)"
  ,TJ002 AS "發票號碼(迄)"
  ,TJ003 AS "申報年月"
  ,TJ004 AS "序號"
  ,TJ005 AS "結帳單單別"
  ,TJ006 AS "結帳單單號"
  ,TJ007 AS "營業稅率"
  ,TJ008 AS "本幣應收金額"
  ,TJ009 AS "本幣營業稅"
  ,TJ010 AS "確認碼"

FROM ACRTJ
