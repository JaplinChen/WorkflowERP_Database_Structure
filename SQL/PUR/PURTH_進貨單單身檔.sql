--PURTH_進貨單單身檔
SELECT
  ,TH001 AS "單別"
  ,TH002 AS "單號"
  ,TH003 AS "序號"
  ,TH004 AS "品號"
  ,TH005 AS "品名"
  ,TH006 AS "規格"
  ,TH007 AS "進貨數量"
  ,TH008 AS "單位"
  ,TH009 AS "庫別"
  ,TH010 AS "批號"
  ,TH011 AS "採購單別"
  ,TH012 AS "採購單號"
  ,TH013 AS "採購序號"
  ,TH014 AS "驗收日期"
  ,TH015 AS "驗收數量"
  ,TH016 AS "計價數量"
  ,TH017 AS "驗退數量"
  ,TH018 AS "原幣單位進價"
  ,TH019 AS "原幣進貨金額"
  ,TH020 AS "原幣扣款金額"
  ,TH021 AS "借入單別"
  ,TH022 AS "借入單號"
  ,TH023 AS "借入序號"
  ,TH024 AS "進貨費用"
  ,TH025 AS "扣款說明"
  ,TH026 AS "暫不付款"
  ,TH027 AS "逾期碼"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'待驗'
   WHEN '2' THEN N'合格'
   WHEN '3' THEN N'不良'
   WHEN '4' THEN N'特採'
   ELSE ""
   END AS "檢驗狀態"
  ,TH029 AS "驗退碼"
  ,TH030 AS "確認碼"
  ,TH031 AS "結帳碼"
  ,TH032 AS "更新碼"
  ,TH033 AS "備註"
  ,TH034 AS "庫存數量"
  ,TH035 AS "小單位"
  ,TH036 AS "有效日期"
  ,TH037 AS "複檢日期"
  ,TH038 AS "確認者"
  ,TH039 AS "應付憑單別"
  ,TH040 AS "應付憑單號"
  ,TH041 AS "應付憑單序號"
  ,TH042 AS "專案代號"
  ,TH043 AS "產生分錄碼"
  ,TH044 AS "沖自籌額碼"
  ,TH045 AS "原幣未稅金額"
  ,TH046 AS "原幣稅額"
  ,TH047 AS "本幣未稅金額"
  ,TH048 AS "本幣稅額"
  ,TH049 AS "進貨包裝數量"
  ,TH050 AS "驗收包裝數量"
  ,TH051 AS "驗退包裝數量"
  ,TH052 AS "本幣沖自籌額"
  ,TH053 AS "包裝單位"
  ,TH054 AS "保稅碼"
  ,TH055 AS "原幣沖自籌額"
  ,TH056 AS "計價單位"
  ,TH057 AS "原始客戶"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態碼"
  ,TH059 AS "EBC出貨通知單號"
  ,TH060 AS "EBC出貨通知版次"
  ,TH061 AS "產品序號數量"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TH063 AS "儲位"
  ,TH064 AS "預算編號"
  ,TH065 AS "預算科目"
  ,TH066 AS "預算部門"
  ,TH072 AS "DATECODE"
  ,TH073 AS "營業稅率"
  ,TH074 AS "多儲批"
  ,TH200 AS "標籤包裝數"
  ,TH201 AS "«È¤á«~¸¹"
  ,TH500 AS "CODE"
  ,TH501 AS "WAFER_BANK_PO單別"
  ,TH502 AS "WAFER_BANK_PO單號"
  ,TH503 AS "WAFER_BANK_PO序號"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TH551 AS "片號記錄"
  ,TH552 AS "晶圓批號"
  ,TH553 AS "工單拋轉碼"
  ,TH554 AS "進貨下站工單單別"
  ,TH555 AS "進貨下站工單單號"
  ,TH556 AS "本站製程"
  ,TH557 AS "下站製程"
  ,TH558 AS "刻號管理"

FROM PURTH
