--PCMTG_費用申請單單身檔
SELECT
  ,TG001 AS "費用單別"
  ,TG002 AS "費用單號"
  ,TG003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'統一發票'
   WHEN '2' THEN N'載有稅額其他憑證'
   WHEN '3' THEN N'不可申報的收據'
   WHEN '4' THEN N'無憑證'
   WHEN '5' THEN N'沖銷借支申請'
   ELSE ""
   END AS "憑証類別"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TG006 AS "營業稅率"
  ,TG007 AS "幣別"
  ,TG008 AS "匯率"
  ,TG009 AS "原幣金額"
  ,TG010 AS "本幣未稅金額"
  ,TG011 AS "本幣稅額"
  ,CASE 
   WHEN '1' THEN N'增-1減'
   ELSE ""
   END AS "增減值"
  ,TG013 AS "憑証日期"
  ,TG014 AS "申報年月"
  ,TG015 AS "賣方統一編號"
  ,TG016 AS "發票號碼"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'農產品收購憑證'
   WHEN 'G' THEN N'海關代徵完稅憑證'
   WHEN 'N' THEN N'不可抵扣專用發票'
   WHEN 'S' THEN N'可抵扣專用發票'
   WHEN 'T' THEN N'運輸發票'
   WHEN 'W' THEN N'廢舊物資收購憑證'
   WHEN 'Z' THEN N'其他'
   ELSE ""
   END AS "發票聯數"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TG019 AS "借支單別"
  ,TG020 AS "借支單號"
  ,TG021 AS "沖銷原幣金額"
  ,TG022 AS "扣抵本幣金額"
  ,TG023 AS "會計科目"
  ,TG024 AS "備註"
  ,TG025 AS "確認碼"
  ,TG026 AS "預算編號"
  ,TG027 AS "預算科目"
  ,TG033 AS "稅別碼"
  ,TG034 AS "專案代號"
  ,TG035 AS "註記號"
  ,TG036 AS "發票註記碼長度"
  ,TG037 AS "發票流水碼長度"
  ,TG038 AS "稅幣匯率"

FROM PCMTG
