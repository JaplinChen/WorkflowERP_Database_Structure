--RMATC_維修單單頭檔
SELECT
  ,TC001 AS "維修單別"
  ,TC002 AS "維修單號"
  ,TC003 AS "單據日期"
  ,TC004 AS "確認日期"
  ,TC005 AS "叫修單別"
  ,TC006 AS "叫修單號"
  ,TC007 AS "客戶代號"
  ,TC008 AS "產品品號"
  ,TC009 AS "產品品名"
  ,TC010 AS "產品規格"
  ,TC011 AS "送修人員"
  ,TC012 AS "送修部門"
  ,TC013 AS "問題描述"
  ,TC014 AS "預計完修日"
  ,TC015 AS "實際完修日"
  ,TC016 AS "維修人員"
  ,TC017 AS "維修部門"
  ,CASE 
   WHEN '0' THEN N'維修中'
   WHEN '1' THEN N'轉下站'
   WHEN '2' THEN N'送原廠'
   WHEN '3' THEN N'完成'
   ELSE ""
   END AS "狀態碼"
  ,TC019 AS "下站代號"
  ,TC020 AS "下站單別"
  ,TC021 AS "下站單號"
  ,TC022 AS "列印次數"
  ,TC023 AS "備註"
  ,TC024 AS "確認者"
  ,TC025 AS "預計工時"
  ,TC026 AS "實際工時"
  ,TC027 AS "結帳碼"
  ,TC028 AS "結帳單別"
  ,TC029 AS "結帳單號"
  ,TC030 AS "結帳序號"
  ,TC031 AS "本幣總金額"
  ,TC032 AS "保固否"
  ,TC033 AS "下站代號名稱"
  ,TC034 AS "確認碼"
  ,TC035 AS "維修站別"
  ,TC036 AS "客戶全名"
  ,TC037 AS "發票郵遞區號"
  ,TC038 AS "統一編號"
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
  ,TC040 AS "發票地址(一)"
  ,TC041 AS "發票地址(二)"
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
  ,TC043 AS "發票號碼"
  ,TC044 AS "發票日期"
  ,TC045 AS "申報年月"
  ,TC046 AS "營業稅率"
  ,TC047 AS "發票列印次數"
  ,TC048 AS "發票作廢"
  ,TC049 AS "本幣銷貨金額"
  ,TC050 AS "本幣銷貨稅額"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TC052 AS "傳送次數"
  ,TC053 AS "產品序號"
  ,TC054 AS "幣別"
  ,TC055 AS "匯率"
  ,TC056 AS "原幣銷貨金額"
  ,TC057 AS "原幣銷貨稅額"
  ,TC058 AS "送貨地址一"
  ,TC059 AS "送貨地址二"
  ,TC060 AS "原幣總金額"
  ,TC066 AS "稅別碼"
  ,TC067 AS "註記號"

FROM RMATC
