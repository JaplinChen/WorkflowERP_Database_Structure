--NOTTT_票據貼現單頭檔
SELECT
  ,TT001 AS "票貼單別"
  ,TT002 AS "票貼單號"
  ,TT003 AS "單據日期"
  ,TT004 AS "票貼銀行"
  ,TT005 AS "幣別"
  ,TT006 AS "票面總額"
  ,TT007 AS "票貼利息"
  ,TT008 AS "票貼費用"
  ,TT009 AS "票貼總額"
  ,TT010 AS "貸方科目"
  ,TT011 AS "利息科目"
  ,TT012 AS "費用科目"
  ,TT013 AS "票貼科目"
  ,TT014 AS "產生分錄碼"
  ,TT015 AS "傳票單別"
  ,TT016 AS "傳票單號"
  ,TT017 AS "備註"
  ,TT018 AS "確認日期"
  ,TT019 AS "確認者"
  ,TT020 AS "確認碼"
  ,TT021 AS "列印次數"
  ,TT022 AS "傳送次數"
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
  ,TT024 AS "匯率"

FROM NOTTT
