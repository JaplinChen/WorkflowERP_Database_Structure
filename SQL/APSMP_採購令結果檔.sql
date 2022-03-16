--APSMP_採購令結果檔
SELECT
  ,MP001 AS "採購編號"
  ,MP002 AS "品號"
  ,MP003 AS "採購數量"
  ,MP004 AS "ERP採購日期"
  ,MP005 AS "ERP預交日"
  ,MP006 AS "建議預交日"
  ,MP007 AS "建議採購日期"
  ,MP008 AS "廠商代號"
  ,MP009 AS "驗收數量"
  ,CASE 
   WHEN '0' THEN N'建議請購'
   WHEN '1' THEN N'請購未確認'
   WHEN '3' THEN N'請購已確認'
   WHEN '5' THEN N'採購未確認'
   WHEN '7' THEN N'採購已確認'
   WHEN '9' THEN N'採購已發出'
   ELSE ""
   END AS "狀態碼"
  ,CASE 
   WHEN '1' THEN N'新開的採購令'
   WHEN '0' THEN N'已開立的採購令'
   ELSE ""
   END AS "新開單"
  ,MP012 AS "供應商位置"
  ,MP013 AS "廠別"
  ,MP014 AS "變更碼"
  ,MP015 AS "計劃批號"

FROM APSMP
