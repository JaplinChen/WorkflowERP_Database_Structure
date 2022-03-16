--INVTF_暫出入轉撥單頭檔
SELECT
  ,TF001 AS "異動單別"
  ,TF002 AS "異動單號"
  ,TF003 AS "異動日期"
  ,CASE 
   WHEN '1' THEN N'客戶,'
   WHEN '2' THEN N'廠商,'
   WHEN '3' THEN N'人員,'
   WHEN '9' THEN N'其它'
   ELSE ""
   END AS "異動對象"
  ,TF005 AS "對象代碼"
  ,TF006 AS "對象簡稱"
  ,TF007 AS "部門代號"
  ,TF008 AS "員工代號"
  ,TF009 AS "廠別"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TF011 AS "幣別"
  ,TF012 AS "匯率"
  ,TF013 AS "件數"
  ,TF014 AS "備註"
  ,TF015 AS "對象全名"
  ,TF016 AS "地址一"
  ,TF017 AS "地址二"
  ,TF018 AS "其它備註"
  ,TF019 AS "列印次數"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'U' THEN N'確認失敗'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TF021 AS "更新碼"
  ,TF022 AS "總數量"
  ,TF023 AS "總金額"
  ,TF024 AS "單據日期"
  ,TF025 AS "確認者"
  ,TF026 AS "營業稅率"
  ,TF027 AS "稅額"
  ,TF028 AS "總包裝數量"
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
  ,TF030 AS "傳送次數"
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
  ,TF032 AS "派車單別"
  ,TF033 AS "派車單號"
  ,TF037 AS "銷貨單單價別"
  ,TF039 AS "稅別碼"
  ,TF040 AS "單身多稅率"
  ,TF041 AS "預計轉銷日"
  ,TF042 AS "轉銷日"
  ,TF043 AS "出通單更新碼"
  ,TF044 AS "不控管信用額度"

FROM INVTF
