--ASTTN_資產採購單單身檔
SELECT
  ,TN001 AS "採購單別"
  ,TN002 AS "採購單號"
  ,TN003 AS "序號"
  ,TN004 AS "品名"
  ,TN005 AS "規格"
  ,TN006 AS "採購數量"
  ,TN007 AS "單位"
  ,TN008 AS "採購單價"
  ,TN009 AS "採購金額"
  ,TN010 AS "備註"
  ,TN011 AS "已交數量"
  ,CASE 
   WHEN 'N' THEN N'未結案'
   WHEN 'Y' THEN N'自動結案'
   WHEN 'y' THEN N'指定結案'
   ELSE ""
   END AS "結案碼"
  ,TN013 AS "確認碼"
  ,TN014 AS "參考單號"
  ,TN015 AS "預交日"
  ,TN016 AS "請購單別"
  ,TN017 AS "請購單號"
  ,TN018 AS "請購序號"
  ,TN019 AS "請購部門"
  ,TN020 AS "專案代號"
  ,TN021 AS "預算編號"
  ,TN022 AS "預算科目"
  ,TN023 AS "預算部門"

FROM ASTTN
