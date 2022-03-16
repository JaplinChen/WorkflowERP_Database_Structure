--MTMTN_模具變更單身檔
SELECT
  ,TN001 AS "模具編號"
  ,TN002 AS "變更版次"
  ,TN003 AS "序號"
  ,TN004 AS "欄位編號"
  ,TN005 AS "欄位名稱"
  ,TN006 AS "新文字型欄位值"
  ,TN007 AS "原文字型欄位值"
  ,TN008 AS "新數值欄位值"
  ,TN009 AS "原數值欄位值"
  ,TN010 AS "欄位型態"
  ,TN011 AS "保留欄位"
  ,TN012 AS "備註"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TN014 AS "新值名稱"
  ,TN015 AS "原值名稱"

FROM MTMTN
