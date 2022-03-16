--BCSTK_保稅託外加工出廠單頭檔
SELECT
  ,TK001 AS "保留欄位"
  ,TK002 AS "單別"
  ,TK003 AS "單號"
  ,TK004 AS "單據日期"
  ,TK005 AS "加工廠商代號"
  ,TK006 AS "產品品號"
  ,TK007 AS "預計生產數量"
  ,TK008 AS "管理局核准文號"
  ,TK009 AS "預計運回日期"
  ,TK010 AS "出廠日期"
  ,TK011 AS "確認碼"
  ,TK012 AS "確認者"
  ,TK013 AS "列印次數"
  ,TK014 AS "傳送次數"
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
  ,TK016 AS "部門代號"
  ,TK017 AS "保稅人員"
  ,TK018 AS "備註"
  ,TK019 AS "進廠數量"
  ,TK020 AS "結案碼"
  ,TK021 AS "製令單別"
  ,TK022 AS "製令單號"
  ,TK023 AS "製程代號"
  ,TK024 AS "出廠紀錄卡號"

FROM BCSTK
