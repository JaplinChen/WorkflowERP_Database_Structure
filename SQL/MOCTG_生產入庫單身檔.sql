--MOCTG_生產入庫單身檔
SELECT
  ,TG001 AS "入庫單別"
  ,TG002 AS "入庫單號"
  ,TG003 AS "序號"
  ,TG004 AS "產品品號"
  ,TG005 AS "品名"
  ,TG006 AS "規格"
  ,TG007 AS "單位"
  ,CASE 
   WHEN '1' THEN N'入'
   WHEN '-1' THEN N'出'
   ELSE ""
   END AS "入/出別"
  ,TG010 AS "庫別"
  ,TG011 AS "入庫數量"
  ,TG012 AS "報廢數量"
  ,TG013 AS "驗收數量"
  ,TG014 AS "製令單別"
  ,TG015 AS "製令單號"
  ,CASE 
   WHEN '1' THEN N'待驗'
   WHEN '2' THEN N'合格'
   WHEN '3' THEN N'不良'
   WHEN '0' THEN N'免檢'
   ELSE ""
   END AS "檢驗狀態"
  ,TG017 AS "批號"
  ,TG018 AS "有效日期"
  ,TG019 AS "複檢日期"
  ,TG020 AS "備註"
  ,TG021 AS "專案代號"
  ,TG022 AS "確認碼"
  ,TG023 AS "驗退數量"
  ,TG024 AS "急料"
  ,TG025 AS "入庫包裝數量"
  ,TG026 AS "報廢包裝數量"
  ,TG027 AS "驗收包裝數量"
  ,TG028 AS "驗退包裝數量"
  ,TG029 AS "包裝單位"
  ,TG030 AS "保稅碼"
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'N' THEN N'未拋轉'
   ELSE ""
   END AS "拋轉碼"
  ,TG032 AS "產品序號數量"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TG034 AS "儲位"
  ,TG038 AS "海關手冊"
  ,TG039 AS "SFT批號"
  ,TG041 AS "DATECODE"
  ,TG200 AS "標籤包裝數"
  ,TG500 AS "本站製程"
  ,TG501 AS "下站製程"
  ,TG502 AS "不良品庫別"
  ,TG503 AS "GROSS_DIE"
  ,TG504 AS "GOOD_DIE"
  ,TG505 AS "良率%"
  ,TG506 AS "加工片數"
  ,TG507 AS "非存貨拋轉碼"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TG553 AS "不良品數量"
  ,TG554 AS "廢品數量"
  ,TG555 AS "不良品DIE數"
  ,TG556 AS "廢品DIE數"
  ,TG560 AS "工單拋轉碼"
  ,TG561 AS "進貨下站工單單別"
  ,TG562 AS "進貨下站工單單號"
  ,TG563 AS "非存貨入庫單別"
  ,TG564 AS "非存貨入庫單號"
  ,TG565 AS "刻號/BIN記錄"
  ,TG567 AS "刻號管理"

FROM MOCTG
