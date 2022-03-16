--BCSTF_保稅放行單單據單身檔
SELECT
  ,TF001 AS "單別"
  ,TF002 AS "單號"
  ,TF003 AS "序號"
  ,TF004 AS "異動代碼"
  ,TF005 AS "異動單別"
  ,TF006 AS "異動單號"
  ,TF007 AS "異動序號"
  ,TF008 AS "品號"
  ,TF009 AS "放行數量"
  ,TF010 AS "件數"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TF012 AS "總價值"
  ,TF013 AS "備註"
  ,TF014 AS "庫別"
  ,TF015 AS "單價"
  ,TF016 AS "品名"
  ,TF017 AS "規格"
  ,TF018 AS "保稅品"
  ,TF019 AS "單位"

FROM BCSTF
