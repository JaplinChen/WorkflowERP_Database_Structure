--ACTND_多帳本分類帳檔
SELECT
  ,ND001 AS "統制科目編號"
  ,ND002 AS "傳票日期"
  ,ND003 AS "傳票單別"
  ,ND004 AS "傳票單號"
  ,ND005 AS "序號"
  ,ND006 AS "明細科目編號"
  ,CASE 
   WHEN '1' THEN N'借,'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借貸別"
  ,ND008 AS "本幣金額"
  ,ND009 AS "摘要"
  ,ND010 AS "部門"
  ,ND011 AS "專案代號"
  ,ND012 AS "幣別"
  ,ND013 AS "匯率"
  ,ND014 AS "原幣金額"
  ,ND015 AS "帳別代號"
  ,ND022 AS "關係人代號"
  ,ND023 AS "營運分類一"
  ,ND024 AS "營運分類一名稱"
  ,ND025 AS "營運分類二"
  ,ND026 AS "營運分類二名稱"
  ,ND027 AS "營運分類三"
  ,ND028 AS "營運分類三名稱"

FROM ACTND
