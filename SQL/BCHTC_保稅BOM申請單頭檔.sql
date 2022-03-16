--BCHTC_保稅BOM申請單頭檔
SELECT
  ,TC001 AS "送審文號"
  ,TC002 AS "收文文號"
  ,TC003 AS "核准文號"
  ,CASE 
   WHEN '1' THEN N'新版'
   WHEN '2' THEN N'更版'
   WHEN '3' THEN N'年度申請'
   ELSE ""
   END AS "清冊類別"
  ,TC005 AS "送審日期"
  ,TC006 AS "核准日期"
  ,TC007 AS "生效日期"
  ,TC008 AS "確認碼"
  ,TC009 AS "確認者"
  ,TC010 AS "確認日期"
  ,TC011 AS "備註"
  ,TC012 AS "保留欄位"
  ,TC013 AS "保留欄位"
  ,TC014 AS "保留欄位"

FROM BCHTC
