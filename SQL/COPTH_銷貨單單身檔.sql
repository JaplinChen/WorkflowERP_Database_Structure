--COPTH_銷貨單單身檔
SELECT
  ,TH001 AS "單別"
  ,TH002 AS "單號"
  ,TH003 AS "序號"
  ,TH004 AS "品號"
  ,TH005 AS "品名"
  ,TH006 AS "規格"
  ,TH007 AS "庫別"
  ,TH008 AS "數量"
  ,TH009 AS "單位"
  ,TH010 AS "庫存數量"
  ,TH011 AS "小單位"
  ,TH012 AS "單價"
  ,TH013 AS "金額"
  ,TH014 AS "訂單單別"
  ,TH015 AS "訂單單號"
  ,TH016 AS "訂單序號"
  ,TH017 AS "批號"
  ,TH018 AS "備註"
  ,TH019 AS "客戶品號"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TH021 AS "更新碼"
  ,TH022 AS "保留欄位"
  ,TH023 AS "保留欄位"
  ,TH024 AS "贈/備品量"
  ,TH025 AS "折扣率"
  ,TH026 AS "結帳碼"
  ,TH027 AS "結帳單別"
  ,TH028 AS "結帳單號"
  ,TH029 AS "結帳序號"
  ,TH030 AS "專案代號"
  ,CASE 
   WHEN '1' THEN N'贈品量'
   WHEN '2' THEN N'備品量'
   ELSE ""
   END AS "類型"
  ,TH032 AS "暫出單別"
  ,TH033 AS "暫出單號"
  ,TH034 AS "暫出序號"
  ,TH035 AS "原幣未稅金額"
  ,TH036 AS "原幣稅額"
  ,TH037 AS "本幣未稅金額"
  ,TH038 AS "本幣稅額"
  ,TH039 AS "包裝數量"
  ,TH040 AS "贈/備品包裝量"
  ,TH041 AS "包裝單位"
  ,TH042 AS "保稅碼"
  ,TH043 AS "銷退數量"
  ,TH044 AS "銷退包裝數量"
  ,TH045 AS "原幣銷退未稅金額"
  ,TH046 AS "原幣銷退稅額"
  ,TH047 AS "本幣銷退未稅金額"
  ,TH048 AS "本幣銷退稅額"
  ,TH049 AS "佣金比率"
  ,TH050 AS "佣金金額"
  ,TH051 AS "原始客戶"
  ,TH052 AS "銷退贈/備品量"
  ,TH053 AS "銷退贈/備品包裝量"
  ,TH054 AS "暫不付款"
  ,TH057 AS "產品序號數量"
  ,TH058 AS "預測代號"
  ,TH059 AS "預測序號"
  ,TH060 AS "儲位"
  ,TH061 AS "計價數量"
  ,TH062 AS "計價單位"
  ,TH068 AS "多儲批"
  ,TH069 AS "贈備品率"
  ,TH070 AS "最終客戶代號"
  ,TH071 AS "參考數量"
  ,TH072 AS "參考包裝數量"
  ,TH073 AS "營業稅率"
  ,CASE 
   WHEN '1' THEN N'CRM合約'
   WHEN '2' THEN N'CRM維修'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "CRM來源"
  ,TH075 AS "CRM單別"
  ,TH076 AS "CRM單號"
  ,TH077 AS "CRM序號"
  ,TH078 AS "CRM合約代號"
  ,TH079 AS "CRM可扣抵"
  ,TH080 AS "CRM扣抵量"
  ,CASE 
   WHEN '0' THEN N'無'
   WHEN '1' THEN N'次數'
   WHEN '2' THEN N'時數'
   WHEN '3' THEN N'金額'
   WHEN '4' THEN N'數量'
   WHEN '5' THEN N'百分比'
   ELSE ""
   END AS "CRM扣抵單位"
  ,TH200 AS "客戶品名"
  ,TH500 AS "刻號/BIN記錄"
  ,TH501 AS "刻號管理"
  ,TH502 AS "以包裝單位計價"
  ,TH503 AS "DATECODE"

FROM COPTH
