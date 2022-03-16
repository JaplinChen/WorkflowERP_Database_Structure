--EPSTH_出口費用資料單頭檔
SELECT
  ,TH001 AS "出口費用單別"
  ,TH002 AS "出口費用單號"
  ,TH003 AS "費用日期"
  ,TH004 AS "廠商代號"
  ,TH005 AS "隱藏欄位"
  ,TH006 AS "隱藏欄位"
  ,TH007 AS "廠別"
  ,TH008 AS "交易幣別"
  ,TH009 AS "匯率"
  ,TH010 AS "隱藏欄位"
  ,TH011 AS "隱藏欄位"
  ,TH012 AS "原幣應付金額"
  ,TH013 AS "原幣營業稅額"
  ,TH014 AS "確認碼"
  ,TH015 AS "備註"
  ,TH016 AS "列印次數"
  ,TH017 AS "單據日期"
  ,TH018 AS "確認者"
  ,TH019 AS "隱藏欄位"
  ,TH020 AS "本幣應付金額"
  ,TH021 AS "本幣營業稅額"
  ,TH022 AS "付款條件代號"
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
  ,TH024 AS "傳送次數"
  ,TH025 AS "隱藏欄位"
  ,TH026 AS "隱藏欄位"
  ,TH027 AS "隱藏欄位"
  ,TH028 AS "隱藏欄位"
  ,TH029 AS "隱藏欄位"
  ,TH030 AS "隱藏欄位"
  ,TH036 AS "註記號"
  ,TH037 AS "稅幣匯率"
  ,TH038 AS "發票註記碼長度"
  ,TH039 AS "發票流水碼長度"

FROM EPSTH
