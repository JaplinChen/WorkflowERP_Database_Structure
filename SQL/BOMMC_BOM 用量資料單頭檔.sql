--BOMMC_BOM 用量資料單頭檔
SELECT
  ,MC001 AS "主件品號"
  ,MC002 AS "單位"
  ,MC003 AS "小單位"
  ,MC004 AS "標準批量"
  ,MC005 AS "製令單別"
  ,MC006 AS "變更單別"
  ,MC007 AS "變更單號"
  ,MC008 AS "變更序號"
  ,MC009 AS "版次"
  ,MC010 AS "備註"
  ,CASE 
   WHEN '1' THEN N'PLM'
   ELSE ""
   END AS "來源"
  ,MC016 AS "確認碼"
  ,MC017 AS "確認日期"
  ,MC018 AS "確認者"
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
  ,MC020 AS "列印次數"
  ,MC021 AS "傳送次數"

FROM BOMMC
