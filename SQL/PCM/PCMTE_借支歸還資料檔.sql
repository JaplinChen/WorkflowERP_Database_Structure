--PCMTE_借支歸還資料檔
SELECT
  ,TE001 AS "歸還單別"
  ,TE002 AS "歸還單號"
  ,TE003 AS "歸還日期"
  ,TE004 AS "單據日期"
  ,TE005 AS "申請人"
  ,TE006 AS "幣別"
  ,TE007 AS "匯率"
  ,TE008 AS "原幣金額"
  ,TE009 AS "本幣金額"
  ,TE010 AS "借支單別"
  ,TE011 AS "借支單號"
  ,TE012 AS "沖銷原幣金額"
  ,TE013 AS "專案代號"
  ,TE014 AS "備註"
  ,TE015 AS "確認碼"
  ,TE016 AS "確認者"
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
  ,TE018 AS "產生分錄碼"
  ,TE019 AS "傳票單別"
  ,TE020 AS "傳票單號"
  ,TE021 AS "列印次數"
  ,TE022 AS "傳送次數"

FROM PCMTE
