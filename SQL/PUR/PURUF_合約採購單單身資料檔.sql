--PURUF_合約採購單單身資料檔
SELECT
  ,UF001 AS "合約單別"
  ,UF002 AS "合約單號"
  ,UF003 AS "序號"
  ,UF004 AS "品號"
  ,UF005 AS "品名"
  ,UF006 AS "規格"
  ,UF007 AS "交貨庫別"
  ,UF008 AS "合約數量"
  ,UF009 AS "單位"
  ,UF010 AS "單價"
  ,UF011 AS "合約金額"
  ,UF012 AS "預交日"
  ,UF013 AS "備註"
  ,UF014 AS "已採購數量"
  ,CASE 
   WHEN 'N' THEN N'未結案'
   WHEN 'Y' THEN N'自動結案'
   WHEN 'y' THEN N'指定結案'
   ELSE ""
   END AS "結案碼"
  ,UF016 AS "製造商"
  ,UF017 AS "確認碼"
  ,UF018 AS "小單位"
  ,UF019 AS "專案代號"
  ,UF020 AS "急料"
  ,UF021 AS "請購單別"
  ,UF022 AS "請購單號"
  ,UF023 AS "請購序號"
  ,UF024 AS "承認型號"
  ,UF025 AS "合約包裝數量"
  ,UF026 AS "已採購包裝數量"
  ,UF027 AS "包裝單位"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,UF029 AS "產品圖號"
  ,UF030 AS "圖號版次"
  ,UF037 AS "已採購金額"
  ,UF038 AS "製程別"
  ,UF039 AS "光罩層次"
  ,UF040 AS "類別"
  ,UF041 AS "HOLD_條件"
  ,UF042 AS "Wafer型號"
  ,UF043 AS "營業稅率"

FROM PURUF
