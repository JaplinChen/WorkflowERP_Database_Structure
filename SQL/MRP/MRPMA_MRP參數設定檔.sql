--MRPMA_MRP參數設定檔
SELECT
  ,CASE 
   WHEN '1' THEN N'不自動調整'
   WHEN '2' THEN N'依品號調整'
   WHEN '3' THEN N'統一調整'
   ELSE ""
   END AS "交期調整"
  ,MA002 AS "生產允許交期提前天數"
  ,MA003 AS "採購允許交期提前天數"
  ,CASE 
   WHEN '1' THEN N'請購單'
   WHEN '2' THEN N'採購單'
   ELSE ""
   END AS "採購計劃發放目的"
  ,MA005 AS "急料條件-採購"
  ,CASE 
   WHEN 'M' THEN N'依MRP需求'
   WHEN 'L' THEN N'依LRP需求'
   WHEN 'A' THEN N'全部'
   ELSE ""
   END AS "補貨政策"
  ,MA007 AS "急料條件-生產"

FROM MRPMA
