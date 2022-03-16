--APSMO_製令結果檔
SELECT
  ,MO001 AS "製令編號"
  ,MO002 AS "需求數量"
  ,MO003 AS "ERP預計完工日"
  ,MO004 AS "ERP預計開工日"
  ,MO005 AS "APS建議完工日"
  ,MO006 AS "APS建議開工日"
  ,MO007 AS "製令品號"
  ,MO008 AS "途程編號"
  ,MO009 AS "已生產量"
  ,MO010 AS "報廢數量"
  ,CASE 
   WHEN '0' THEN N'建議開立工單'
   WHEN '1' THEN N'已確認工單'
   WHEN '3' THEN N'已發放工單'
   WHEN '5' THEN N'在製中工單'
   WHEN '7' THEN N'已完工工單'
   WHEN '9' THEN N'已入庫（結案）工單'
   ELSE ""
   END AS "狀態碼"
  ,MO012 AS "關鍵物料進料限制時間點"
  ,CASE 
   WHEN '0' THEN N'表示ERP已開立製令，可接受手動調整功能'
   WHEN '1' THEN N'表示計畫製令，不可接受手動調整功能'
   ELSE ""
   END AS "新開單"
  ,MO014 AS "廠別"
  ,CASE 
   WHEN 'N' THEN N'不使用(表示無製程)'
   WHEN 'Y' THEN N'使用製令製程'
   ELSE ""
   END AS "製程否"
  ,MO016 AS "APS建議完工時間"
  ,MO017 AS "APS建議開工時間"
  ,MO018 AS "變更碼"
  ,MO019 AS "計劃批號"
  ,MO024 AS "母製令別"
  ,MO025 AS "母製令編號"
  ,MO026 AS "訂單單別"
  ,MO027 AS "訂單單號"
  ,MO028 AS "訂單序號"

FROM APSMO
