--WSCTF_專櫃對帳單單頭檔
SELECT
  ,TF001 AS "對帳單別"
  ,TF002 AS "對帳單號"
  ,TF003 AS "專櫃代號"
  ,TF004 AS "帳單年月"
  ,TF006 AS "應收金額"
  ,TF007 AS "費用金額(一)"
  ,TF008 AS "費用金額(二)"
  ,TF009 AS "費用金額(三)"
  ,TF010 AS "費用金額(四)"
  ,TF011 AS "費用金額(五)"
  ,TF012 AS "費用金額(六)"
  ,TF013 AS "費用金額(七)"
  ,TF014 AS "費用金額(八)"
  ,TF015 AS "費用金額(九)"
  ,TF016 AS "費用金額(十)"
  ,TF017 AS "費用金額(十一)"
  ,TF018 AS "費用金額(十二)"
  ,TF019 AS "費用金額(十三)"
  ,TF020 AS "費用金額(十四)"
  ,TF021 AS "費用金額(十五)"
  ,TF022 AS "發票總額"
  ,TF023 AS "發票貨款"
  ,TF024 AS "發票稅額"
  ,TF025 AS "備註"
  ,TF026 AS "發票號碼"
  ,TF027 AS "發票日期"
  ,TF028 AS "統一編號"
  ,TF029 AS "發票抬頭"
  ,TF030 AS "發票地址一"
  ,TF031 AS "發票地址二"
  ,TF032 AS "免開發票金額"
  ,TF033 AS "結帳單別"
  ,TF034 AS "結帳單號"
  ,TF035 AS "結帳碼"
  ,TF036 AS "確認日期"
  ,TF037 AS "確認者"
  ,TF038 AS "確認碼"
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
  ,TF042 AS "營業稅率"
  ,TF043 AS "發票作廢"
  ,TF044 AS "申報年月"
  ,TF045 AS "結帳序號"
  ,TF046 AS "客戶代號"
  ,TF047 AS "單據日期"
  ,TF053 AS "稅別碼"
  ,TF054 AS "註記號"

FROM WSCTF
