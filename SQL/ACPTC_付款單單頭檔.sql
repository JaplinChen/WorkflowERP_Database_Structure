--ACPTC_付款單單頭檔
SELECT
  ,TC001 AS "付款單別"
  ,TC002 AS "付款單號"
  ,TC003 AS "付款日期"
  ,TC004 AS "廠商代號"
  ,TC005 AS "幣別"
  ,TC006 AS "列印次數"
  ,TC007 AS "備註"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TC009 AS "更新碼"
  ,TC010 AS "廠別"
  ,TC011 AS "原幣借方金額"
  ,TC012 AS "原幣貸方金額"
  ,TC013 AS "本幣借方金額"
  ,TC014 AS "本幣貸方金額"
  ,TC015 AS "產生分錄碼"
  ,TC016 AS "單據日期"
  ,TC017 AS "確認者"
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
  ,TC019 AS "傳送次數"
  ,TC020 AS "收款單別"
  ,TC021 AS "收款單號"
  ,TC027 AS "收款單沖帳"

FROM ACPTC
