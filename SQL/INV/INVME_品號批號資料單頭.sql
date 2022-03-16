--INVME_品號批號資料單頭
SELECT
  ,ME001 AS "品號"
  ,ME002 AS "批號"
  ,ME003 AS "最早入庫日"
  ,ME004 AS "上次盤點日"
  ,ME005 AS "參考單別"
  ,ME006 AS "參考單號"
  ,CASE 
   WHEN 'N' THEN N'未結案'
   WHEN 'Y' THEN N'自動結案'
   ELSE ""
   END AS "結案碼"
  ,ME008 AS "備註"
  ,ME009 AS "有效日期"
  ,ME010 AS "複檢日期"
  ,ME500 AS "最後製程"
  ,ME501 AS "預計下站製程"
  ,ME502 AS "備註"
  ,ME503 AS "GOOD_DIE"
  ,ME504 AS "GROSS_DIE"
  ,ME505 AS "良率%"
  ,ME506 AS "WAFER_BANK"
  ,ME507 AS "WAFER_BANK單號"
  ,ME508 AS "序號"
  ,ME550 AS "Wafer型號"

FROM INVME
