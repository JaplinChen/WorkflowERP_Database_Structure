--IDLTZ_Wafer Claim資料維護單身
SELECT
  ,TZ001 AS "Claim單別"
  ,TZ002 AS "Claim單號"
  ,TZ003 AS "序號"
  ,TZ004 AS "品號"
  ,TZ005 AS "晶圓批號"
  ,TZ006 AS "退貨數量"
  ,TZ007 AS "幣別"
  ,TZ008 AS "匯率"
  ,TZ009 AS "單價"
  ,TZ010 AS "金額"
  ,TZ011 AS "委工單號"
  ,TZ012 AS "進貨單號"
  ,TZ013 AS "退貨單別"
  ,TZ014 AS "退貨單號"
  ,TZ015 AS "退貨序號"
  ,TZ016 AS "備註"
  ,TZ017 AS "託外進貨單號"
  ,CASE 
   WHEN '1' THEN N'新加入'
   WHEN '2' THEN N'已確認'
   WHEN '3' THEN N'不處理'
   WHEN '4' THEN N'已處理退貨'
   ELSE ""
   END AS "處理狀態"
  ,CASE 
   WHEN '2' THEN N'已測晶圓'
   WHEN '3' THEN N'未測IC'
   WHEN '4' THEN N'已測IC'
   ELSE ""
   END AS "來源依據"
  ,TZ025 AS "確認碼"
  ,TZ026 AS "平均良率"
  ,TZ027 AS "Body代號"
  ,TZ028 AS "進貨數量"
  ,TZ029 AS "折讓日期"
  ,TZ030 AS "採購單號"

FROM IDLTZ
