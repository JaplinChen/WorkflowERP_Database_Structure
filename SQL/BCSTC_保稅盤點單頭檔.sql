--BCSTC_保稅盤點單頭檔
SELECT
  ,TC001 AS "盤點底稿編號"
  ,TC002 AS "盤點底稿序號"
  ,TC003 AS "盤點年度"
  ,TC004 AS "品號"
  ,TC005 AS "盤點日期"
  ,TC006 AS "存置地點"
  ,CASE 
   WHEN '1' THEN N'驗收區'
   WHEN '2' THEN N'原料倉'
   WHEN '3' THEN N'生產線'
   WHEN '4' THEN N'成品倉庫'
   ELSE ""
   END AS "存放區別"
  ,TC008 AS "儲位"
  ,TC009 AS "盤點數量"
  ,TC010 AS "帳面數量"
  ,TC011 AS "備註"
  ,TC012 AS "資料來源"
  ,TC013 AS "在製品"
  ,TC014 AS "盤點總號"
  ,TC015 AS "BOM編號"
  ,TC016 AS "盤存應折數"
  ,TC017 AS "製令單別"
  ,TC018 AS "製令單號"

FROM BCSTC
