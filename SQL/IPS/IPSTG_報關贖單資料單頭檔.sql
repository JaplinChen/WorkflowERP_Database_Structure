--IPSTG_報關贖單資料單頭檔
SELECT
  ,TG001 AS "報關單別"
  ,TG002 AS "報關單號"
  ,TG003 AS "報關日期"
  ,TG004 AS "報單號碼"
  ,TG005 AS "廠別代號"
  ,TG006 AS "廠商代號"
  ,TG007 AS "提單單號"
  ,TG008 AS "提單日期"
  ,TG009 AS "到港日期"
  ,TG010 AS "INVOICE-NO"
  ,TG011 AS "E.T.D"
  ,TG012 AS "E.T.A"
  ,TG013 AS "船公司"
  ,TG014 AS "貨櫃場"
  ,TG015 AS "免費倉租日期"
  ,TG016 AS "押匯日期"
  ,TG017 AS "幣別"
  ,TG018 AS "匯率"
  ,TG019 AS "原幣贖單金額"
  ,TG020 AS "贖單金額"
  ,TG021 AS "原幣沖自籌額"
  ,TG022 AS "沖自籌額"
  ,TG023 AS "原幣應還款額"
  ,TG024 AS "應還款額"
  ,TG025 AS "遠期天數"
  ,TG026 AS "年利率"
  ,TG027 AS "應還款日"
  ,TG028 AS "S/I單號"
  ,TG029 AS "L/C單號"
  ,TG030 AS "B/L費用總計"
  ,TG031 AS "L/C費用合計"
  ,TG032 AS "B/L成本合計"
  ,TG033 AS "單身B/L費用合計"
  ,TG034 AS "本幣銀行利息"
  ,TG035 AS "隱藏欄位"
  ,TG036 AS "更新碼"
  ,TG037 AS "確認碼"
  ,TG038 AS "備註"
  ,TG039 AS "列印次數"
  ,TG040 AS "原幣關稅合計"
  ,TG041 AS "確認日期"
  ,TG042 AS "確認者"
  ,TG043 AS "付款條件代號"
  ,TG044 AS "報關行"
  ,TG045 AS "船名"
  ,TG046 AS "船次"
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
  ,TG048 AS "傳送次數"
  ,CASE 
   WHEN '1' THEN N'依進貨金額'
   WHEN '2' THEN N'依進貨數量'
   WHEN '3' THEN N'依毛重'
   WHEN '4' THEN N'依材積'
   ELSE ""
   END AS "費用分攤方式"
  ,TG050 AS "原幣完稅價格合計"
  ,TG051 AS "本幣完稅價格合計"
  ,TG052 AS "原幣加減費用"
  ,TG053 AS "推廣貿易費合計"
  ,TG054 AS "貨物稅額合計"
  ,TG055 AS "本幣關稅合計"
  ,TG056 AS "更新碼"
  ,CASE 
   WHEN '1' THEN N'空運'
   WHEN '2' THEN N'海運'
   WHEN '3' THEN N'海空聯運'
   WHEN '4' THEN N'郵寄'
   WHEN '5' THEN N'陸運'
   WHEN '6' THEN N'自取'
   WHEN '7' THEN N'自送'
   WHEN '8' THEN N'快遞'
   ELSE ""
   END AS "隱藏欄位"
  ,TG058 AS "申報年月"
  ,TG059 AS "營業稅率"
  ,TG060 AS "稅款繳納證號"
  ,TG061 AS "原幣運費"
  ,TG062 AS "原幣保險費"
  ,TG063 AS "本幣營業稅基"
  ,TG064 AS "本幣營業稅額"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,TG071 AS "小提單單號"
  ,TG072 AS "海關手冊"

FROM IPSTG
