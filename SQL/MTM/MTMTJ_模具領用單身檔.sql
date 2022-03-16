--MTMTJ_模具領用單身檔
SELECT
  ,TJ001 AS "領用單別"
  ,TJ002 AS "領用單號"
  ,TJ003 AS "領用序號"
  ,TJ004 AS "模具編號"
  ,TJ005 AS "歸還日期"
  ,TJ006 AS "歸還碼"
  ,TJ007 AS "備註"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"

FROM MTMTJ
