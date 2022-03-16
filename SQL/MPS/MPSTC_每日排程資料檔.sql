--MPSTC_每日排程資料檔
SELECT
  ,TC001 AS "計劃批號"
  ,TC002 AS "來源序號"
  ,TC003 AS "日期"
  ,TC004 AS "數量"
  ,TC005 AS "資源代號"
  ,TC006 AS "計劃耗用產能"
  ,TC007 AS "備註"
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'銷售預測'
   WHEN '3' THEN N'獨立需求'
   ELSE ""
   END AS "需求來源"
  ,TC009 AS "來源單別"
  ,TC010 AS "來源單號"
  ,TC011 AS "BOM節點"

FROM MPSTC
