--ACTML_分類帳檔
SELECT
  ,ML001 AS "統制科目編號"
  ,ML002 AS "傳票日期"
  ,ML003 AS "傳票單別"
  ,ML004 AS "傳票單號"
  ,ML005 AS "序號"
  ,ML006 AS "明細科目編號"
  ,CASE 
   WHEN '1' THEN N'借,'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借貸別"
  ,ML008 AS "本幣金額"
  ,ML009 AS "摘要"
  ,ML010 AS "部門"
  ,ML011 AS "專案代號"
  ,ML012 AS "幣別"
  ,ML013 AS "匯率"
  ,ML014 AS "原幣金額"
  ,ML020 AS "關係人代號"
  ,ML022 AS "營運分類一"
  ,ML023 AS "營運分類一名稱"
  ,ML024 AS "營運分類二"
  ,ML025 AS "營運分類二名稱"
  ,ML026 AS "營運分類三"
  ,ML027 AS "營運分類三名稱"

FROM ACTML
