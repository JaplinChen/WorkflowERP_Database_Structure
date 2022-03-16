--PCMTF_費用申請單單頭檔
SELECT
  ,TF001 AS "費用單別"
  ,TF002 AS "費用單號"
  ,TF003 AS "申請日期"
  ,TF004 AS "單據日期"
  ,CASE 
   WHEN '1' THEN N'現金'
   WHEN '2' THEN N'轉帳'
   WHEN '3' THEN N'零用金'
   ELSE ""
   END AS "撥款方式"
  ,TF006 AS "零用金類別"
  ,TF007 AS "申請部門"
  ,TF008 AS "申請人"
  ,TF009 AS "本幣總金額"
  ,TF010 AS "專案代號"
  ,TF011 AS "備註"
  ,TF012 AS "存提單別"
  ,TF013 AS "存提單號"
  ,TF014 AS "產生分錄碼"
  ,TF015 AS "傳票單別"
  ,TF016 AS "傳票單號"
  ,TF017 AS "確認碼"
  ,TF018 AS "確認者"
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
  ,TF020 AS "列印次數"
  ,TF021 AS "傳送次數"
  ,TF022 AS "預算部門"
  ,TF025 AS "凍結付款碼"

FROM PCMTF
