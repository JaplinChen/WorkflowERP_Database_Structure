--INVTG_借出入轉撥單身檔
SELECT
  ,TG001 AS "異動單別"
  ,TG002 AS "異動單號"
  ,TG003 AS "序號"
  ,TG004 AS "品號"
  ,TG005 AS "品名"
  ,TG006 AS "規格"
  ,TG007 AS "轉出庫別"
  ,TG008 AS "轉入庫別"
  ,TG009 AS "數量"
  ,TG010 AS "單位"
  ,TG011 AS "小單位"
  ,TG012 AS "單價"
  ,TG013 AS "金額"
  ,TG014 AS "來源單別"
  ,TG015 AS "來源單號"
  ,TG016 AS "來源序號"
  ,TG017 AS "批號"
  ,TG018 AS "專案代號"
  ,TG019 AS "備註"
  ,TG020 AS "轉進銷量"
  ,TG021 AS "歸還量"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'U' THEN N'確認失敗'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TG023 AS "更新碼"
  ,TG024 AS "結案碼"
  ,TG025 AS "有效日期"
  ,TG026 AS "複檢日期"
  ,TG027 AS "預計歸還日"
  ,TG028 AS "包裝數量"
  ,TG029 AS "轉進銷包裝量"
  ,TG030 AS "歸還包裝量"
  ,TG031 AS "包裝單位"
  ,TG033 AS "產品序號數量"
  ,TG035 AS "轉出儲位"
  ,TG036 AS "轉入儲位"
  ,TG040 AS "最終客戶代號"
  ,TG042 AS "營業稅率"
  ,CASE 
   WHEN '1' THEN N'贈品量'
   WHEN '2' THEN N'備品量'
   ELSE ""
   END AS "類型"
  ,TG044 AS "贈/備品量"
  ,TG045 AS "贈/備品包裝量"
  ,TG046 AS "轉進銷贈/備品量"
  ,TG047 AS "轉進銷贈/備品包裝量"
  ,TG048 AS "歸還銷贈/備品量"
  ,TG049 AS "歸還銷贈/備品包裝量"
  ,TG500 AS "刻號/BIN記錄"
  ,TG501 AS "刻號管理"
  ,TG502 AS "DATECODE"

FROM INVTG
