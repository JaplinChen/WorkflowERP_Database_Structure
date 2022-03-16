--INVTI_借出入歸還單身檔
SELECT
  ,TI001 AS "異動單別"
  ,TI002 AS "異動單號"
  ,TI003 AS "序號"
  ,TI004 AS "品號"
  ,TI005 AS "品名"
  ,TI006 AS "規格"
  ,TI007 AS "轉出庫別"
  ,TI008 AS "轉入庫別"
  ,TI009 AS "數量"
  ,TI010 AS "單位"
  ,TI011 AS "小單位"
  ,TI012 AS "單價"
  ,TI013 AS "金額"
  ,TI014 AS "來源單別"
  ,TI015 AS "來源單號"
  ,TI016 AS "來源序號"
  ,TI017 AS "批號"
  ,TI018 AS "有效日期"
  ,TI019 AS "複檢日期"
  ,TI020 AS "專案代號"
  ,TI021 AS "備註"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'U' THEN N'確認失敗'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TI023 AS "包裝數量"
  ,TI024 AS "包裝單位"
  ,TI025 AS "產品序號數量"
  ,TI026 AS "轉出儲位"
  ,TI027 AS "轉入儲位"
  ,TI033 AS "營業稅率"
  ,CASE 
   WHEN '1' THEN N'贈品量'
   WHEN '2' THEN N'備品量'
   ELSE ""
   END AS "類型"
  ,TI035 AS "贈/備品量"
  ,TI036 AS "贈/備品包裝量"
  ,TI500 AS "刻號/BIN記錄"
  ,TI501 AS "刻號管理"
  ,TI502 AS "DATECODE"

FROM INVTI
