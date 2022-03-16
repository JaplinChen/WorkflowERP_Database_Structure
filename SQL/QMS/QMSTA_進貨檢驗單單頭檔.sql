--QMSTA_進貨檢驗單單頭檔
SELECT
  ,TA001 AS "進貨單別"
  ,TA002 AS "進貨單號"
  ,TA003 AS "進貨序號"
  ,TA004 AS "檢驗日期"
  ,TA005 AS "檢驗期限"
  ,TA006 AS "檢驗人員"
  ,TA007 AS "破壞數"
  ,TA008 AS "驗退數"
  ,TA009 AS "扣款金額"
  ,TA010 AS "扣款原因"
  ,TA011 AS "判定"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'減量'
   WHEN '2' THEN N'正常'
   WHEN '3' THEN N'加嚴'
   WHEN '4' THEN N'全檢'
   ELSE ""
   END AS "檢驗方式"
  ,TA013 AS "列印次數"
  ,TA014 AS "確認碼"
  ,TA015 AS "備註"
  ,TA019 AS "單據日期"
  ,TA020 AS "確認者"
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
  ,TA022 AS "總抽樣數量"
  ,TA023 AS "不良數量合計"
  ,TA024 AS "傳送次數"
  ,TA025 AS "品管類別"

FROM QMSTA
