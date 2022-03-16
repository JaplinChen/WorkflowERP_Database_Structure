--EPSTF_信用狀資料單頭
SELECT
  ,TF001 AS "信用狀號"
  ,TF002 AS "類別"
  ,TF003 AS "客戶"
  ,TF004 AS "廠別"
  ,TF005 AS "開狀銀行代號"
  ,TF006 AS "通知銀行代號"
  ,TF007 AS "押匯銀行代號"
  ,TF008 AS "開狀日"
  ,TF009 AS "收到日"
  ,TF010 AS "L.裝船日"
  ,TF011 AS "L.押匯日"
  ,TF012 AS "到期日"
  ,TF013 AS "可否分批"
  ,TF014 AS "可否轉運"
  ,TF015 AS "許可證號"
  ,TF016 AS "幣別"
  ,TF017 AS "匯率"
  ,TF018 AS "總金額"
  ,TF019 AS "押匯金額"
  ,TF020 AS "通知費用"
  ,TF021 AS "結案碼"
  ,TF022 AS "確認碼"
  ,TF023 AS "備註"
  ,TF024 AS "訂單金額"
  ,TF025 AS "確認日期"
  ,TF026 AS "確認者"
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

FROM EPSTF
