--BCHTB_存倉記錄卡號檔
SELECT
  ,TB001 AS "存倉記錄卡號"
  ,TB002 AS "單據日期"
  ,TB003 AS "加工廠商"
  ,TB004 AS "製令單別"
  ,TB005 AS "製令單號"
  ,TB006 AS "產品品號"
  ,TB007 AS "預計產量"
  ,TB008 AS "完工數量"
  ,TB009 AS "未完工數量"
  ,TB010 AS "起始日期"
  ,TB011 AS "截止日期"
  ,TB012 AS "核准文號"
  ,TB013 AS "核准數量"
  ,TB014 AS "可申請數量"
  ,TB015 AS "備註"
  ,TB016 AS "列印次數"
  ,TB017 AS "傳送次數"
  ,CASE 
   WHEN 'Y' THEN N'已結案'
   WHEN 'N' THEN N'未結案'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "狀態碼"

FROM BCHTB
