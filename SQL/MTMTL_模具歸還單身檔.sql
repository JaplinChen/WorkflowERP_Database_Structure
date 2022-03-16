--MTMTL_模具歸還單身檔
SELECT
  ,TL001 AS "歸還單別"
  ,TL002 AS "歸還單號"
  ,TL003 AS "歸還序號"
  ,TL004 AS "模具編號"
  ,TL005 AS "領用單別"
  ,TL006 AS "領用單號"
  ,TL007 AS "領用序號"
  ,CASE 
   WHEN '1' THEN N'閒置'
   WHEN '2' THEN N'故障'
   ELSE ""
   END AS "歸還狀態"
  ,TL009 AS "備註"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"

FROM MTMTL
