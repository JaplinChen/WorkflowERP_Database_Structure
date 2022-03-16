--COPTD_客戶訂單單身資料檔
SELECT
  ,TD001 AS "單別"
  ,TD002 AS "單號"
  ,TD003 AS "序號"
  ,TD004 AS "品號"
  ,TD005 AS "品名"
  ,TD006 AS "規格"
  ,TD007 AS "庫別"
  ,TD008 AS "訂單數量"
  ,TD009 AS "已交數量"
  ,TD010 AS "單位"
  ,TD011 AS "單價"
  ,TD012 AS "金額"
  ,TD013 AS "預交日"
  ,TD014 AS "客戶品號"
  ,TD015 AS "預測代號"
  ,CASE 
   WHEN 'Y' THEN N'自動結案'
   WHEN 'y' THEN N'指定結案'
   WHEN 'N' THEN N'未結案'
   ELSE ""
   END AS "結案碼"
  ,TD017 AS "前置單據-單別"
  ,TD018 AS "前置單據-單號"
  ,TD019 AS "前置單據-序號"
  ,TD020 AS "備註"
  ,TD021 AS "確認碼"
  ,TD022 AS "庫存數量"
  ,TD023 AS "小單位"
  ,TD024 AS "贈品量"
  ,TD025 AS "贈品已交量"
  ,TD026 AS "折扣率"
  ,TD027 AS "專案代號"
  ,TD028 AS "預測序號"
  ,TD029 AS "包裝方式"
  ,TD030 AS "毛重(Kg)"
  ,TD031 AS "材積(CUFT)"
  ,TD032 AS "訂單包裝數量"
  ,TD033 AS "已交包裝數量"
  ,TD034 AS "贈品包裝量"
  ,TD035 AS "贈品已交包裝量"
  ,TD036 AS "包裝單位"
  ,TD037 AS "原始客戶"
  ,TD038 AS "請採購廠商"
  ,TD039 AS "圖號"
  ,TD043 AS "EBC訂單號碼"
  ,TD044 AS "EBC訂單版次"
  ,CASE 
   WHEN '1' THEN N'報價單'
   WHEN '2' THEN N'合約訂單'
   WHEN '3' THEN N'訂單變更'
   WHEN '4' THEN N'CRM合約訂單'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "來源"
  ,TD046 AS "圖號版次"
  ,TD047 AS "原預交日"
  ,TD048 AS "排定交貨日"
  ,CASE 
   WHEN '1' THEN N'贈品量'
   WHEN '2' THEN N'備品量'
   ELSE ""
   END AS "類型"
  ,TD050 AS "備品量"
  ,TD051 AS "備品已交量"
  ,TD052 AS "備品包裝量"
  ,TD053 AS "備品已交包裝量"
  ,TD059 AS "贈品率"
  ,TD061 AS "RFQ"
  ,TD062 AS "NewCode"
  ,TD063 AS "測試備註一"
  ,TD064 AS "測試備註二"
  ,TD065 AS "最終客戶代號"
  ,TD066 AS "計劃批號"
  ,TD067 AS "優先順序"
  ,TD069 AS "鎖定交期"
  ,TD070 AS "營業稅率"
  ,TD071 AS "CRM單別"
  ,TD072 AS "CRM單號"
  ,TD073 AS "CRM序號"
  ,TD074 AS "CRM合約代號"
  ,TD500 AS "排程日期"
  ,TD501 AS "可排量"
  ,TD502 AS "產品系列"
  ,TD503 AS "客戶需求日"
  ,TD504 AS "以包裝單位計價"

FROM COPTD
