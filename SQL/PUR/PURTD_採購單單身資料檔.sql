--PURTD_採購單單身資料檔
SELECT
  ,TD001 AS "採購單別"
  ,TD002 AS "採購單號"
  ,TD003 AS "序號"
  ,TD004 AS "品號"
  ,TD005 AS "品名"
  ,TD006 AS "規格"
  ,TD007 AS "交貨庫別"
  ,TD008 AS "採購數量"
  ,TD009 AS "單位"
  ,TD010 AS "採購單價"
  ,TD011 AS "採購金額"
  ,TD012 AS "預交日"
  ,TD013 AS "參考單別"
  ,TD014 AS "備註"
  ,TD015 AS "已交數量"
  ,CASE 
   WHEN 'N' THEN N'未結案'
   WHEN 'Y' THEN N'自動結案'
   WHEN 'y' THEN N'指定結案'
   ELSE ""
   END AS "結案碼"
  ,TD017 AS "製造商"
  ,TD018 AS "確認碼"
  ,TD019 AS "庫存數量"
  ,TD020 AS "小單位"
  ,TD021 AS "參考單號"
  ,TD022 AS "專案代號"
  ,TD023 AS "參考序號"
  ,TD024 AS "來源單號"
  ,TD025 AS "急料"
  ,TD026 AS "請購單別"
  ,TD027 AS "請購單號"
  ,TD028 AS "請購序號"
  ,TD029 AS "承認型號"
  ,TD030 AS "採購包裝數量"
  ,TD031 AS "已交包裝數量"
  ,TD032 AS "包裝單位"
  ,TD033 AS "原始客戶"
  ,CASE 
   WHEN '1' THEN N'請購'
   WHEN '2' THEN N'LRP'
   WHEN '3' THEN N'MRP'
   WHEN '4' THEN N'訂單'
   WHEN '5' THEN N'合約採購'
   WHEN '6' THEN N'採購變更'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "來源"
  ,TD035 AS "APS規劃採購號碼"
  ,TD036 AS "EBC採購單號"
  ,TD037 AS "EBC採購版次"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TD039 AS "產品圖號"
  ,TD040 AS "圖號版次"
  ,TD041 AS "分批序號"
  ,TD042 AS "預算編號"
  ,TD043 AS "預算科目"
  ,TD044 AS "預算部門"
  ,TD045 AS "原預交日"
  ,TD046 AS "交期確認日"
  ,TD057 AS "營業稅率"
  ,TD200 AS "批號"
  ,TD500 AS "CODE"
  ,TD501 AS "WAFER_BANK_PO單別"
  ,TD502 AS "WAFER_BANK_PO單號"
  ,TD503 AS "WAFER_BANK_PO序號"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TD551 AS "WaferSTART數量"
  ,TD552 AS "開始WaferSTART日期"
  ,TD553 AS "刻號/BIN記錄"
  ,TD554 AS "BIN管理"

FROM PURTD
