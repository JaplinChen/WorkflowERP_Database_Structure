--FCSMF_子公司科目各期餘額檔
SELECT
  ,MF001 AS "子公司代號"
  ,MF002 AS "科目編號"
  ,MF003 AS "會計年度"
  ,MF004 AS "期別"
  ,MF005 AS "本幣借方金額"
  ,MF006 AS "本幣貸方金額"
  ,MF007 AS "幣別"
  ,MF008 AS "匯率"
  ,MF009 AS "原幣借方金額"
  ,MF010 AS "原幣貸方金額"
  ,MF011 AS "統制科目編號"

FROM FCSMF
