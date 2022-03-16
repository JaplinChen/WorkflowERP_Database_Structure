--APSZR_製令暫存檔
SELECT
  ,ZR001 AS "廠別"
  ,ZR002 AS "APS製令編號"
  ,ZR003 AS "需求數量"
  ,ZR004 AS "製令編號"
  ,ZR005 AS "預計完工日期"
  ,ZR006 AS "預計開工日期"
  ,ZR007 AS "品號"
  ,ZR008 AS "途程編號"
  ,ZR009 AS "已生產量"
  ,ZR010 AS "報廢數量"
  ,CASE 
   WHEN '0' THEN N'建議開立工單'
   WHEN '1' THEN N'已確認工單'
   WHEN '3' THEN N'已發放工單'
   WHEN '5' THEN N'在製中工單'
   WHEN '7' THEN N'部份入庫'
   WHEN '9' THEN N'全部入庫（結案）工單'
   ELSE ""
   END AS "狀態碼"
  ,ZR012 AS "關鍵物料進料限制時間點"
  ,CASE 
   WHEN '0' THEN N'表示ERP已開立製令，可接受手動調整功能'
   WHEN '1' THEN N'表示計畫製令，不可接受手動調整功能'
   ELSE ""
   END AS "製令類型"
  ,CASE 
   WHEN '0' THEN N'不使用(表示無製程)'
   WHEN '1' THEN N'使用製令製程'
   ELSE ""
   END AS "有無製令製程"
  ,CASE 
   WHEN '0' THEN N'非外包'
   WHEN '1' THEN N'外包製令'
   ELSE ""
   END AS "外包製令否"
  ,ZR016 AS "加工廠商"
  ,ZR022 AS "鎖定完工時間鎖定碼"
  ,ZR023 AS "鎖定開工時間鎖定碼"
  ,ZR024 AS "生產線別"
  ,ZR025 AS "可否異動"

FROM APSZR
