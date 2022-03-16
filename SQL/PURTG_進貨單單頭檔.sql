--PURTG_進貨單單頭檔
SELECT
  ,TG001 AS "單別"
  ,TG002 AS "單號"
  ,TG003 AS "進貨日期"
  ,TG004 AS "廠別"
  ,TG005 AS "供應廠商"
  ,TG006 AS "廠商單號"
  ,TG007 AS "幣別"
  ,TG008 AS "匯率"
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
  ,TG011 AS "發票號碼"
  ,TG012 AS "列印次數"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TG014 AS "單據日期"
  ,TG015 AS "更新碼"
  ,TG016 AS "備註"
  ,TG017 AS "進貨金額"
  ,TG018 AS "扣款金額"
  ,TG019 AS "原幣稅額"
  ,TG020 AS "進貨費用"
  ,TG021 AS "廠商全名"
  ,TG022 AS "統一編號"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TG024 AS "菸酒註記"
  ,TG025 AS "件數"
  ,TG026 AS "數量合計"
  ,TG027 AS "發票日期"
  ,TG028 AS "原幣貨款金額"
  ,TG029 AS "申報年月"
  ,TG030 AS "營業稅率"
  ,TG031 AS "本幣貨款金額"
  ,TG032 AS "本幣稅額"
  ,TG033 AS "付款條件代號"
  ,TG034 AS "採購單別"
  ,TG035 AS "採購單號"
  ,TG036 AS "預付待抵單別"
  ,TG037 AS "預付待抵單號"
  ,TG038 AS "沖抵金額"
  ,TG039 AS "沖抵稅額"
  ,TG040 AS "包裝數量合計"
  ,TG041 AS "本幣沖自籌額"
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
  ,TG043 AS "隨貨附發票"
  ,CASE 
   WHEN '0' THEN N'依品號預設'
   WHEN 'Y' THEN N'預設為保稅品'
   WHEN 'N' THEN N'預設為非保稅品'
   ELSE ""
   END AS "保稅碼"
  ,TG045 AS "傳送次數"
  ,TG046 AS "原幣沖自籌額"
  ,TG047 AS "EBC出貨通知單號"
  ,TG048 AS "EBC出貨通知版次"
  ,TG049 AS "匯至EBC"
  ,CASE 
   WHEN '1' THEN N'採購'
   WHEN '2' THEN N'進口'
   WHEN '3' THEN N'製令'
   ELSE ""
   END AS "類別"
  ,TG051 AS "預留單別"
  ,TG052 AS "預留單號"
  ,CASE 
   WHEN '0' THEN N'待通知'
   WHEN '1' THEN N'通知中'
   WHEN 'N' THEN N'不通知'
   WHEN 'Y' THEN N'已通知'
   ELSE ""
   END AS "通知碼"
  ,TG058 AS "稅別碼"
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
  ,TG060 AS "海關手冊"
  ,TG061 AS "製造廠商"
  ,TG062 AS "註記號"
  ,TG063 AS "單身多稅率"
  ,TG064 AS "稅幣匯率"
  ,TG065 AS "發票註記碼長度"
  ,TG066 AS "發票流水碼長度"
  ,TG067 AS "聯絡人"
  ,TG200 AS "存檔時分"
  ,TG201 AS "確認時分"
  ,TG500 AS "媒體檔案"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"

FROM PURTG
