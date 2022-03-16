--IPSTK_進口費用資料子單頭檔
SELECT
  ,TK001 AS "進口費用單別"
  ,TK002 AS "進口費用單號"
  ,TK003 AS "進口費用序號"
  ,TK004 AS "費用代號"
  ,TK005 AS "費用金額"
  ,TK006 AS "會計科目"
  ,TK007 AS "應付憑單單別"
  ,TK008 AS "應付憑單單號"
  ,TK009 AS "應付憑單序號"
  ,TK010 AS "結帳碼"
  ,TK011 AS "確認碼"
  ,TK012 AS "備註"
  ,TK013 AS "原幣未稅金額"
  ,TK014 AS "原幣稅額"
  ,TK015 AS "本幣未稅金額"
  ,TK016 AS "本幣稅額"
  ,TK017 AS "成本歸屬"
  ,TK018 AS "稅款碼"
  ,TK019 AS "統一編號"
  ,TK020 AS "發票日期"
  ,TK021 AS "發票號碼"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
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
  ,TK025 AS "菸酒註記"
  ,TK026 AS "申報年月"
  ,TK027 AS "營業稅率"
  ,TK028 AS "發票貨款"
  ,TK029 AS "發票稅額"
  ,TK035 AS "稅別碼"
  ,TK036 AS "註記號"
  ,TK037 AS "專案代號"

FROM IPSTK
