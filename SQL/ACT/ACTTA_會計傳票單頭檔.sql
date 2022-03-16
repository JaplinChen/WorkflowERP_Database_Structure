--ACTTA_會計傳票單頭檔
SELECT
  ,TA001 AS "傳票單別"
  ,TA002 AS "傳票單號"
  ,TA003 AS "傳票日期"
  ,TA004 AS "收支科目"
  ,TA005 AS "總號"
  ,CASE 
   WHEN '1' THEN N'一般傳票輸入'
   WHEN '2' THEN N'應計傳票輸入'
   WHEN '3' THEN N'應計回轉'
   WHEN '4' THEN N'常用傳票複製'
   WHEN '5' THEN N'比率分攤'
   WHEN '6' THEN N'迴轉傳票'
   WHEN '8' THEN N'其他轉入'
   WHEN '7' THEN N'紅字沖銷傳票'
   WHEN 'A' THEN N'票據系統產生'
   WHEN 'B' THEN N'固定資產產生'
   WHEN 'C' THEN N'應收系統產生'
   WHEN 'D' THEN N'應付系統產生'
   WHEN 'E' THEN N'庫存系統產生'
   WHEN 'F' THEN N'訂單系統產生'
   WHEN 'G' THEN N'採購系統產生'
   WHEN 'H' THEN N'製令系統產生'
   WHEN 'J' THEN N'專櫃系統產生'
   WHEN 'K' THEN N'零用金系統產生'
   WHEN 'L' THEN N'成本計算系統 M'
   ELSE ""
   END AS "來源碼"
  ,TA007 AS "本幣借方總金額"
  ,TA008 AS "本幣貸方總金額"
  ,TA009 AS "備註"
  ,TA010 AS "確認碼"
  ,TA011 AS "過帳碼"
  ,TA012 AS "列印次數"
  ,TA013 AS "複製分類"
  ,TA014 AS "確認日"
  ,TA015 AS "確認者"
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
  ,TA017 AS "傳送次數"
  ,TA018 AS "現金流量碼"
  ,TA024 AS "摘要"
  ,TA025 AS "營運分類一"
  ,TA026 AS "營運分類一名稱"
  ,TA027 AS "營運分類二"
  ,TA028 AS "營運分類二名稱"
  ,TA029 AS "營運分類三"
  ,TA030 AS "營運分類三名稱"

FROM ACTTA
