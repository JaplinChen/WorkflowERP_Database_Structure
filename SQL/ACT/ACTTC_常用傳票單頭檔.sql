--ACTTC_常用傳票單頭檔
SELECT
  ,TC001 AS "傳票種類"
  ,TC002 AS "傳票代號"
  ,TC003 AS "生效日期"
  ,TC004 AS "失效日期"
  ,TC005 AS "收支科目"
  ,TC006 AS "分類碼"
  ,TC007 AS "本幣借方總金額"
  ,TC008 AS "本幣貸方總金額"
  ,TC009 AS "備註"
  ,TC010 AS "複製單別"
  ,TC016 AS "摘要"
  ,TC017 AS "營運分類一"
  ,TC018 AS "營運分類一名稱"
  ,TC019 AS "營運分類二"
  ,TC020 AS "營運分類二名稱"
  ,TC021 AS "營運分類三"
  ,TC022 AS "營運分類三名稱"
  ,TC031 AS "現金流量表項目"

FROM ACTTC
