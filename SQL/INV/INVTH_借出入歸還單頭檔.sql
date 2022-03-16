--INVTH_借出入歸還單頭檔
SELECT
  ,TH001 AS "異動單別"
  ,TH002 AS "異動單號"
  ,TH003 AS "異動日期"
  ,CASE 
   WHEN '1' THEN N'客戶,'
   WHEN '2' THEN N'廠商,'
   WHEN '3' THEN N'人員,'
   WHEN '9' THEN N'其它'
   ELSE ""
   END AS "異動對象"
  ,TH005 AS "對象代碼"
  ,TH006 AS "對象簡稱"
  ,TH007 AS "部門代號"
  ,TH008 AS "員工代號"
  ,TH009 AS "廠別"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TH011 AS "幣別"
  ,TH012 AS "匯率"
  ,TH013 AS "件數"
  ,TH014 AS "備註"
  ,TH015 AS "對象全名"
  ,TH016 AS "地址一"
  ,TH017 AS "地址二"
  ,TH018 AS "其它備註"
  ,TH019 AS "列印次數"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'U' THEN N'確認失敗'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TH021 AS "總數量"
  ,TH022 AS "總金額"
  ,TH023 AS "單據日期"
  ,TH024 AS "確認者"
  ,TH025 AS "營業稅率"
  ,TH026 AS "稅額"
  ,TH027 AS "總包裝數量"
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
  ,TH029 AS "傳送次數"
  ,CASE 
   WHEN '1' THEN N'空運'
   WHEN '2' THEN N'海運'
   WHEN '3' THEN N'海空聯運'
   WHEN '4' THEN N'郵寄'
   WHEN '5' THEN N'陸運'
   WHEN '6' THEN N'自取'
   WHEN '7' THEN N'自送'
   WHEN '8' THEN N'快遞'
   ELSE ""
   END AS "運輸方式"
  ,TH031 AS "派車單別"
  ,TH032 AS "派車單號"
  ,TH038 AS "稅別碼"
  ,TH039 AS "單身多稅率"

FROM INVTH
