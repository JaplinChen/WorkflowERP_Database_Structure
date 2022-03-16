--COPTJ_銷退單單身檔
SELECT
  ,TJ001 AS "單別"
  ,TJ002 AS "單號"
  ,TJ003 AS "序號"
  ,TJ004 AS "品號"
  ,TJ005 AS "品名"
  ,TJ006 AS "規格"
  ,TJ007 AS "數量"
  ,TJ008 AS "單位"
  ,TJ009 AS "庫存數量"
  ,TJ010 AS "小單位"
  ,TJ011 AS "單價"
  ,TJ012 AS "金額"
  ,TJ013 AS "退貨庫別"
  ,TJ014 AS "批號"
  ,TJ015 AS "銷貨單別"
  ,TJ016 AS "銷貨單號"
  ,TJ017 AS "銷貨序號"
  ,TJ018 AS "訂單單別"
  ,TJ019 AS "訂單單號"
  ,TJ020 AS "訂單序號"
  ,TJ021 AS "確認碼"
  ,TJ022 AS "更新碼"
  ,TJ023 AS "備註"
  ,TJ024 AS "結帳碼"
  ,TJ025 AS "結帳單別"
  ,TJ026 AS "結帳單號"
  ,TJ027 AS "結帳序號"
  ,TJ028 AS "專案代號"
  ,TJ029 AS "客戶品號"
  ,CASE 
   WHEN '1' THEN N'銷退'
   WHEN '2' THEN N'折讓'
   ELSE ""
   END AS "類型"
  ,TJ031 AS "原幣未稅金額"
  ,TJ032 AS "原幣稅額"
  ,TJ033 AS "本幣未稅金額"
  ,TJ034 AS "本幣稅額"
  ,TJ035 AS "包裝數量"
  ,TJ036 AS "包裝單位"
  ,TJ037 AS "保稅碼"
  ,TJ038 AS "佣金比率"
  ,TJ039 AS "佣金金額"
  ,TJ040 AS "原始客戶"
  ,CASE 
   WHEN '1' THEN N'贈品量'
   WHEN '2' THEN N'備品量'
   ELSE ""
   END AS "數量類型"
  ,TJ042 AS "贈/備品量"
  ,TJ043 AS "贈/備品包裝量"
  ,TJ044 AS "EBC銷退單號"
  ,TJ045 AS "EBC銷退版次"
  ,TJ046 AS "EBC銷退序號"
  ,TJ047 AS "產品序號數量"
  ,TJ049 AS "儲位"
  ,TJ050 AS "計價數量"
  ,TJ051 AS "計價單位"
  ,TJ052 AS "銷退原因代號"
  ,TJ058 AS "營業稅率"
  ,TJ059 AS "CRM可扣抵"
  ,TJ060 AS "CRM扣抵量"
  ,CASE 
   WHEN '0' THEN N'無'
   WHEN '1' THEN N'次數'
   WHEN '2' THEN N'時數'
   WHEN '3' THEN N'金額'
   WHEN '4' THEN N'數量'
   WHEN '5' THEN N'百分比'
   ELSE ""
   END AS "CRM扣抵單位"
  ,TJ500 AS "刻號/BIN記錄"
  ,TJ501 AS "刻號管理"
  ,TJ502 AS "以包裝單位計價"
  ,TJ503 AS "DATECODE"

FROM COPTJ
