--VPAUC_員工資料變更單頭檔
SELECT
  ,UC001 AS "員工代號"
  ,UC002 AS "原員工姓名"
  ,UC003 AS "原員工英文姓名"
  ,UC004 AS "變更版次"
  ,UC005 AS "變更日期"
  ,UC006 AS "刪除員工代號"
  ,UC007 AS "新員工姓名"
  ,UC008 AS "新員工英文姓名"
  ,UC009 AS "修改者"
  ,UC010 AS "備註"
  ,UC011 AS "修改欄位類別"
  ,UC012 AS "確認者"
  ,UC013 AS "確認日期"
  ,UC014 AS "確認碼"
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
   END AS "簽核狀態"
  ,UC016 AS "列印次數"
  ,UC017 AS "傳送次數"
  ,UC023 AS "原版次"

FROM VPAUC
