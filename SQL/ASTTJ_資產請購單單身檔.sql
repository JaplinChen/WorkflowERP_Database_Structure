--ASTTJ_資產請購單單身檔
SELECT
  ,TJ001 AS "單別"
  ,TJ002 AS "單號"
  ,TJ003 AS "序號"
  ,TJ004 AS "品名"
  ,TJ005 AS "規格"
  ,TJ006 AS "請購單位"
  ,TJ007 AS "請購數量"
  ,TJ008 AS "供應廠商"
  ,TJ009 AS "需求日期"
  ,TJ010 AS "採購人員"
  ,TJ011 AS "採購數量"
  ,TJ012 AS "採購單位"
  ,TJ013 AS "採購幣別"
  ,TJ014 AS "採購單價"
  ,TJ015 AS "採購金額"
  ,TJ016 AS "採購碼"
  ,TJ017 AS "採購單號"
  ,TJ018 AS "備註"
  ,TJ019 AS "確認碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TJ021 AS "結案碼"
  ,TJ022 AS "交貨日"
  ,TJ023 AS "鎖定碼"
  ,TJ024 AS "備註"
  ,TJ025 AS "匯率"
  ,TJ026 AS "本幣採購金額"
  ,TJ027 AS "專案代號"
  ,TJ028 AS "預算編號"
  ,TJ029 AS "預算科目"
  ,TJ030 AS "本幣金額"
  ,TJ039 AS "稅別碼"

FROM ASTTJ
