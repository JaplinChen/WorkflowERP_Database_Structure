--EPSTI_出口費用資料單身檔
SELECT
  ,TI001 AS "出口費用單別"
  ,TI002 AS "出口費用單號"
  ,TI003 AS "出口費用序號"
  ,TI004 AS "INVOICE_NO"
  ,TI005 AS "費用代號"
  ,TI006 AS "費用金額"
  ,TI007 AS "會計科目"
  ,TI008 AS "大提單單號"
  ,TI009 AS "小提單單號"
  ,TI010 AS "應付憑單別"
  ,TI011 AS "應付憑單號"
  ,TI012 AS "應付憑序號"
  ,TI013 AS "結帳碼"
  ,TI014 AS "確認碼"
  ,TI015 AS "備註"
  ,TI016 AS "原幣未稅金額"
  ,TI017 AS "原幣稅額"
  ,TI018 AS "本幣未稅金額"
  ,TI019 AS "本幣稅額"
  ,TI020 AS "統一編號"
  ,TI021 AS "發票日期"
  ,TI022 AS "發票號碼"
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
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TI026 AS "菸酒註記"
  ,TI027 AS "申報年月"
  ,TI028 AS "營業稅率"
  ,TI029 AS "發票貨款"
  ,TI030 AS "發票稅額"
  ,TI036 AS "稅別碼"
  ,TI037 AS "註記號"

FROM EPSTI
