--ACRTG_發票更換資料單頭檔
SELECT
  ,TG001 AS "結帳單別"
  ,TG002 AS "結帳單號"
  ,TG003 AS "更換日期"
  ,TG004 AS "單據日期"
  ,TG005 AS "原發票號碼(訖)"
  ,TG006 AS "原幣應收金額"
  ,TG007 AS "原幣營業稅額"
  ,TG008 AS "本幣應收金額"
  ,TG009 AS "本幣營業稅額"
  ,TG010 AS "新結帳單別"
  ,TG011 AS "新結帳單號"
  ,TG012 AS "新客戶全名"
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
   END AS "新發票聯數"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "新課稅別"
  ,TG015 AS "新菸酒註記"
  ,TG016 AS "新發票號碼(訖)"
  ,TG017 AS "新發票日期"
  ,TG018 AS "新發票貨款"
  ,TG019 AS "新發票稅額"
  ,TG020 AS "新申報年月"
  ,TG021 AS "新營業稅率"
  ,TG022 AS "新統一編號"
  ,TG023 AS "幣別"
  ,TG024 AS "匯率"
  ,TG025 AS "確認碼"
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
  ,TG027 AS "確認者"
  ,TG038 AS "稅別碼"
  ,TG039 AS "原註記號"
  ,TG040 AS "新註記號"
  ,TG041 AS "原多發票"
  ,TG042 AS "原發票號碼(起)"
  ,TG043 AS "原發票張數"
  ,TG044 AS "新多發票"
  ,TG045 AS "新發票號碼(起)"
  ,TG046 AS "新發票張數"

FROM ACRTG
