--WSCMW_專櫃門市單據設定檔
SELECT
  ,MW001 AS "單別"
  ,CASE 
   WHEN '1' THEN N'依單據性質設定'
   WHEN '2' THEN N'不自動確認(要補資料)'
   ELSE ""
   END AS "自動確認"
  ,MW003 AS "單據性質"
  ,MW004 AS "請購單-廠別"
  ,MW005 AS "請購單-請購人員"
  ,CASE 
   WHEN '0' THEN N'依廠商資料'
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "請購單-課稅別"
  ,MW007 AS "進/退貨單-廠別"
  ,CASE 
   WHEN '0' THEN N'依廠商資料'
   WHEN '1' THEN N'本國幣別'
   ELSE ""
   END AS "進/退貨單-幣別"
  ,CASE 
   WHEN '0' THEN N'依廠商資料'
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "進/退貨單-課稅別"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "進/退貨單-扣抵區分"
  ,MW011 AS "進/退貨單-菸酒註記"
  ,CASE 
   WHEN '1' THEN N'單據年月'
   WHEN '2' THEN N'自行輸入，預設 1'
   ELSE ""
   END AS "進/退貨單-申報年月"
  ,MW013 AS "進/退貨單-營業稅率"
  ,CASE 
   WHEN '0' THEN N'依廠商資料'
   WHEN '1' THEN N'統一付款代號'
   ELSE ""
   END AS "進/退貨單-付款代號依"
  ,MW015 AS "進/退貨單-統一付款代號"
  ,CASE 
   WHEN '0' THEN N'依客戶資料'
   WHEN '1' THEN N'本國幣別'
   ELSE ""
   END AS "報價單-幣別"
  ,CASE 
   WHEN '0' THEN N'依客戶資料'
   WHEN '1' THEN N'利潤率'
   WHEN '2' THEN N'折扣率'
   ELSE ""
   END AS "報價單-計價方式"
  ,CASE 
   WHEN '1' THEN N'中式'
   WHEN '2' THEN N'英式'
   ELSE ""
   END AS "報價單-列印格式"
  ,CASE 
   WHEN '0' THEN N'依客戶資料'
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "報價單-課稅別"
  ,MW020 AS "報價單-營業稅率"
  ,CASE 
   WHEN '0' THEN N'依客戶資料'
   WHEN '1' THEN N'統一付款代號'
   ELSE ""
   END AS "報價單-付款代號依"
  ,MW022 AS "報價單-統一付款代號"
  ,MW023 AS "庫存異動-廠別"
  ,MW024 AS "採購單-廠別"
  ,CASE 
   WHEN '0' THEN N'依廠商資料'
   WHEN '1' THEN N'本國幣別'
   ELSE ""
   END AS "採購單-幣別"
  ,CASE 
   WHEN '0' THEN N'依廠商資料'
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "採購單-課稅別"
  ,CASE 
   WHEN '0' THEN N'依廠商資料'
   WHEN '1' THEN N'空運'
   WHEN '2' THEN N'海運'
   WHEN '3' THEN N'海空聯運'
   WHEN '4' THEN N'郵寄'
   WHEN '5' THEN N'陸運'
   WHEN '6' THEN N'自取'
   WHEN '7' THEN N'自送'
   WHEN '8' THEN N'快遞'
   ELSE ""
   END AS "採購單-運輸方式"
  ,CASE 
   WHEN '0' THEN N'依廠商資料'
   WHEN '1' THEN N'統一付款代號'
   ELSE ""
   END AS "採購單-付款代號依"
  ,MW029 AS "採購單-統一付款代號"
  ,MW030 AS "專櫃門市代號"
  ,MW031 AS "[POS]前台客戶代號"
  ,MW037 AS "請購單稅別碼"
  ,MW038 AS "進/退貨單稅別碼"
  ,MW039 AS "報價單稅別碼"
  ,MW040 AS "採購單稅別碼"

FROM WSCMW
