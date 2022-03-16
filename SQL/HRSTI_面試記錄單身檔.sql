--HRSTI_面試記錄單身檔
SELECT
  ,TI001 AS "人才編號"
  ,TI002 AS "序號"
  ,TI003 AS "因素代號"
  ,TI004 AS "權重"
  ,TI005 AS "評分"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TI007 AS "備註"
  ,TI008 AS "隱藏單別"

FROM HRSTI
