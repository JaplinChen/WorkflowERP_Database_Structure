--COPUB_合約訂單變更單身資料檔
SELECT
  ,UB001 AS "單別"
  ,UB002 AS "單號"
  ,UB003 AS "變更版次"
  ,UB004 AS "序號"
  ,UB005 AS "新品號"
  ,UB006 AS "新品名"
  ,UB007 AS "新規格"
  ,UB008 AS "新庫別"
  ,UB009 AS "新合約數量"
  ,UB010 AS "新單位"
  ,UB011 AS "新贈品量"
  ,UB012 AS "新折扣率"
  ,UB013 AS "新單價"
  ,UB014 AS "新金額"
  ,UB015 AS "新預交日"
  ,UB016 AS "新客戶品號"
  ,CASE 
   WHEN 'Y' THEN N'指定結案'
   WHEN 'N' THEN N'未結案'
   ELSE ""
   END AS "新結案碼"
  ,UB018 AS "新備註"
  ,UB020 AS "新小單位"
  ,UB021 AS "新專案代號"
  ,UB022 AS "新包裝方式"
  ,UB023 AS "新毛重(Kg)"
  ,UB024 AS "新材積(CUFT)"
  ,UB025 AS "新合約包裝數量"
  ,UB026 AS "新贈品包裝量"
  ,UB027 AS "新包裝單位"
  ,UB028 AS "新圖號"
  ,UB029 AS "新圖號版次"
  ,UB030 AS "變更原因"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,UB040 AS "贈/備品率"
  ,UB041 AS "產品系列"
  ,UB042 AS "NewCode"
  ,CASE 
   WHEN 'H' THEN N'Handling'
   WHEN 'M' THEN N'Masking'
   WHEN 'X' THEN N''
   ELSE ""
   END AS "收費方式"
  ,UB044 AS "RFQ"
  ,UB045 AS "光罩費用"
  ,UB046 AS "最終客戶代號"
  ,UB047 AS "營業稅率"
  ,UB104 AS "原序號"
  ,UB105 AS "原品號"
  ,UB106 AS "原品名"
  ,UB107 AS "原規格"
  ,UB108 AS "原庫別"
  ,UB109 AS "原合約數量"
  ,UB110 AS "原單位"
  ,UB111 AS "原贈品量"
  ,UB112 AS "原折扣率"
  ,UB113 AS "原單價"
  ,UB114 AS "原金額"
  ,UB115 AS "原預交日"
  ,UB116 AS "原客戶品號"
  ,CASE 
   WHEN 'Y' THEN N'指定結案'
   WHEN 'N' THEN N'未結案'
   ELSE ""
   END AS "原結案碼"
  ,UB118 AS "原備註"
  ,UB120 AS "原小單位"
  ,UB121 AS "原專案代號"
  ,UB122 AS "原包裝方式"
  ,UB123 AS "原毛重(Kg)"
  ,UB124 AS "原材積(CUFT)"
  ,UB125 AS "原合約包裝數量"
  ,UB126 AS "原贈品包裝量"
  ,UB127 AS "原包裝單位"
  ,UB128 AS "原圖號"
  ,UB129 AS "原圖號版次"
  ,UB130 AS "原已受訂量"
  ,UB131 AS "原贈品已訂量"
  ,UB132 AS "原已訂金額"
  ,UB133 AS "原已訂包裝數量"
  ,UB134 AS "原贈品已訂包裝量"
  ,UB140 AS "贈/備品率"
  ,UB141 AS "產品系列"
  ,UB142 AS "NewCode"
  ,CASE 
   WHEN 'H' THEN N'Handling'
   WHEN 'M' THEN N'Masking'
   WHEN 'X' THEN N''
   ELSE ""
   END AS "收費方式"
  ,UB144 AS "RFQ"
  ,UB145 AS "光罩費用"
  ,UB146 AS "最終客戶代號"
  ,UB147 AS "原營業稅率"

FROM COPUB
