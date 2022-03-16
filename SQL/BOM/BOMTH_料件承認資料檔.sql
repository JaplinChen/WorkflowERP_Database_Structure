--BOMTH_料件承認資料檔
SELECT
  ,TH001 AS "品號"
  ,TH002 AS "製造商"
  ,TH003 AS "承認型號"
  ,TH004 AS "修改次數"
  ,TH005 AS "變更原因"
  ,TH006 AS "確認碼"
  ,TH007 AS "確認日期"
  ,TH008 AS "確認者"
  ,TH009 AS "原主要來源製造商"
  ,TH010 AS "原主要來源承認型號"
  ,TH011 AS "承認狀態"
  ,TH012 AS "主要來源"
  ,TH013 AS "承認文號"
  ,TH014 AS "送樣日期"
  ,TH015 AS "生效日期"
  ,TH016 AS "失效日期"
  ,TH017 AS "備註"
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
  ,CASE 
   WHEN '1' THEN N'PLM'
   ELSE ""
   END AS "來源"
  ,TH111 AS "原承認狀態"
  ,TH112 AS "原主要來源"
  ,TH113 AS "原承認文號"
  ,TH114 AS "原送樣日期"
  ,TH115 AS "原生效日期"
  ,TH116 AS "原失效日期"
  ,TH117 AS "原備註"

FROM BOMTH
