--IPSTM_預付購料費用資料檔
SELECT
  ,TM001 AS "預付購料單別"
  ,TM002 AS "預付購料單號"
  ,TM003 AS "序號"
  ,TM004 AS "費用代號"
  ,TM005 AS "交易幣別"
  ,TM006 AS "匯率"
  ,TM007 AS "費用金額"
  ,TM008 AS "應付廠商代號"
  ,TM009 AS "統一編號"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'普通發票'
   WHEN 'C' THEN N'免用發票'
   ELSE ""
   END AS "發票聯數"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TM012 AS "發票日期"
  ,TM013 AS "發票號碼"
  ,TM014 AS "營業稅率"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TM016 AS "菸酒註記"
  ,TM017 AS "申報年月"
  ,TM018 AS "會計科目"
  ,TM019 AS "備註"
  ,TM020 AS "付款條件代號"
  ,TM021 AS "原幣未稅金額"
  ,TM022 AS "原幣稅額"
  ,TM023 AS "本幣未稅金額"
  ,TM024 AS "本幣稅額"
  ,TM025 AS "結帳碼"
  ,TM026 AS "應付憑單別"
  ,TM027 AS "應付憑單號"
  ,TM028 AS "應付憑單序號"
  ,TM034 AS "稅別碼"
  ,TM035 AS "註記號"
  ,TM036 AS "稅幣匯率"
  ,TM037 AS "發票註記碼長度"
  ,TM038 AS "發票流水碼長度"

FROM IPSTM
