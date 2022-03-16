--PCMTC_借支申請單頭檔
SELECT
  ,TC001 AS "借支單別"
  ,TC002 AS "借支單號"
  ,TC003 AS "借支日期"
  ,TC004 AS "單據日期"
  ,CASE 
   WHEN '1' THEN N'現金'
   WHEN '2' THEN N'轉帳'
   WHEN '3' THEN N'零用金'
   ELSE ""
   END AS "撥款方式"
  ,TC006 AS "零用金類別"
  ,TC007 AS "申請部門"
  ,TC008 AS "申請人"
  ,TC009 AS "幣別"
  ,TC010 AS "匯率"
  ,TC011 AS "原幣借支金額"
  ,TC012 AS "本幣借支金額"
  ,TC013 AS "原幣已沖銷金額"
  ,TC014 AS "存提單別"
  ,TC015 AS "存提單號"
  ,TC016 AS "產生分錄碼"
  ,TC017 AS "傳票單別"
  ,TC018 AS "傳票單號"
  ,TC019 AS "專案代號"
  ,TC020 AS "結案碼"
  ,TC021 AS "備註"
  ,TC022 AS "確認者"
  ,TC023 AS "確認碼"
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
  ,TC025 AS "列印次數"
  ,TC026 AS "傳送次數"

FROM PCMTC
