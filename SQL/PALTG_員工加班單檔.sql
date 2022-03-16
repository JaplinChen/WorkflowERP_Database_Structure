--PALTG_員工加班單檔
SELECT
  ,TG001 AS "員工代號"
  ,TG002 AS "加班日期"
  ,TG003 AS "加班班別"
  ,TG004 AS "加班起始時分"
  ,TG005 AS "加班截止時分"
  ,TG006 AS "加班時分"
  ,TG007 AS "加班時數"
  ,TG008 AS "備註"
  ,TG009 AS "確認碼"
  ,TG010 AS "序號"
  ,TG011 AS "平日加班時數-1類"
  ,TG012 AS "平日加班時數-2類"
  ,TG013 AS "平日加班時數-3類"
  ,TG014 AS "確認日期"
  ,TG015 AS "確認者"
  ,TG016 AS "轉補休"
  ,TG017 AS "轉補休時數"
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
  ,TG019 AS "假日加班時數"
  ,TG020 AS "假日加班時數-1類"
  ,TG021 AS "假日加班時數-2類"
  ,TG022 AS "假日加班時數-3類"

FROM PALTG
