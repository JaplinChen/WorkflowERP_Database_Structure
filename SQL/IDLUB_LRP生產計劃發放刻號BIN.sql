--IDLUB_LRP生產計劃發放刻號BIN
SELECT
  ,UB001 AS "計劃批號"
  ,UB002 AS "計劃別"
  ,UB003 AS "生產序號"
  ,UB004 AS "相依序號"
  ,UB005 AS "序號"
  ,UB006 AS "等級代號BIN"
  ,UB007 AS "批號"
  ,UB008 AS "單位"
  ,UB009 AS "數量"
  ,CASE 
   WHEN '+1' THEN N'入庫'
   WHEN '-1' THEN N'出庫'
   WHEN '0' THEN N'無'
   ELSE ""
   END AS "出入性質"
  ,CASE 
   WHEN '1' THEN N'入庫'
   WHEN '2' THEN N'銷貨'
   WHEN '3' THEN N'領用'
   WHEN '4' THEN N'轉撥'
   WHEN '5' THEN N'調整'
   WHEN 'X' THEN N'多產品工單'
   WHEN '9' THEN N'單產品工單'
   ELSE ""
   END AS "異動別"
  ,UB012 AS "DATECODE"
  ,UB013 AS "異動日"
  ,UB014 AS "備註"
  ,UB015 AS "片號記錄"
  ,UB016 AS "確認碼"
  ,UB017 AS "刻號"
  ,UB018 AS "庫別"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,UB020 AS "被取替代品號"
  ,UB021 AS "被取替代製程"

FROM IDLUB
