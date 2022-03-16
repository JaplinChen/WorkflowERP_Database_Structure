--PCMTA_零用金轉撥單頭檔
SELECT
  ,TA001 AS "轉撥單別"
  ,TA002 AS "轉撥單號"
  ,TA003 AS "轉撥日期"
  ,TA004 AS "單據日期"
  ,TA005 AS "備註"
  ,TA006 AS "存提單別"
  ,TA007 AS "存提單號"
  ,TA008 AS "傳票單別"
  ,TA009 AS "傳票單號"
  ,TA010 AS "產生分錄"
  ,TA011 AS "確認者"
  ,TA012 AS "確認碼"
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
   END AS "簽核狀態"
  ,TA014 AS "列印次數"
  ,TA015 AS "傳送次數"

FROM PCMTA
