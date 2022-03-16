--PURTB_請購單單身資料檔
SELECT
  ,TB001 AS "單別"
  ,TB002 AS "單號"
  ,TB003 AS "序號"
  ,TB004 AS "品號"
  ,TB005 AS "品名"
  ,TB006 AS "規格"
  ,TB007 AS "請購單位"
  ,TB008 AS "庫別"
  ,TB009 AS "請購數量"
  ,TB010 AS "供應廠商"
  ,TB011 AS "需求日期"
  ,TB012 AS "備註"
  ,TB013 AS "採購人員"
  ,TB014 AS "採購數量"
  ,TB015 AS "採購單位"
  ,TB016 AS "採購幣別"
  ,TB017 AS "採購單價"
  ,TB018 AS "採購金額"
  ,TB019 AS "交貨日"
  ,TB020 AS "鎖定碼"
  ,TB021 AS "採購碼"
  ,TB022 AS "採購單號"
  ,TB023 AS "製造商"
  ,TB024 AS "備註"
  ,TB025 AS "確認碼"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TB027 AS "請購小單位"
  ,TB028 AS "採購小單位"
  ,TB029 AS "參考單別"
  ,TB030 AS "參考單號"
  ,TB031 AS "參考序號"
  ,TB032 AS "急料"
  ,TB033 AS "承認型號"
  ,TB034 AS "請購包裝數量"
  ,TB035 AS "採購包裝數量"
  ,TB037 AS "請購包裝單位"
  ,TB038 AS "採購包裝單位"
  ,TB039 AS "結案碼"
  ,CASE 
   WHEN '1' THEN N'不需詢價'
   WHEN '2' THEN N'詢價中'
   WHEN '3' THEN N'審核中'
   WHEN '4' THEN N'已核准'
   ELSE ""
   END AS "詢價碼"
  ,TB041 AS "APS規劃採購號碼"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TB043 AS "專案代號"
  ,TB044 AS "請購匯率"
  ,TB045 AS "本幣金額"
  ,TB046 AS "分批採購"
  ,TB047 AS "預算編號"
  ,TB048 AS "預算科目"
  ,TB049 AS "請購單價"
  ,TB050 AS "請購幣別"
  ,TB051 AS "請購金額"
  ,TB057 AS "稅別碼"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "交易條件"
  ,TB063 AS "營業稅率"
  ,TB064 AS "單身多稅率"
  ,TB500 AS "CODE"
  ,TB501 AS "WAFER_BANK_PO單別"
  ,TB502 AS "WAFER_BANK_PO單號"
  ,TB503 AS "WAFER_BANK_PO序號"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TB551 AS "請購金額"

FROM PURTB
