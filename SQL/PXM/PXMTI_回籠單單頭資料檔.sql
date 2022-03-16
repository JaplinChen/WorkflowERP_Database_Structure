--PXMTI_回籠單單頭資料檔
SELECT
  ,TI001 AS "單別"
  ,TI002 AS "單號"
  ,TI003 AS "單據日期"
  ,TI004 AS "營站代號"
  ,TI005 AS "部門代號"
  ,TI006 AS "業務人員"
  ,TI007 AS "出貨廠別"
  ,TI008 AS "交易幣別"
  ,TI009 AS "匯率"
  ,TI010 AS "送貨地址(一)"
  ,TI011 AS "送貨地址(二)"
  ,TI012 AS "備註"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TI014 AS "連絡人"
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
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TI017 AS "列印次數"
  ,TI018 AS "回籠金額"
  ,TI019 AS "回籠稅額"
  ,TI020 AS "總數量"
  ,TI021 AS "回籠日期"
  ,TI022 AS "確認者"
  ,TI023 AS "營業稅率"
  ,TI024 AS "總毛重(Kg)"
  ,TI025 AS "總材積(CUFT)"
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
  ,TI027 AS "客戶全名"
  ,TI028 AS "代送商代號"
  ,CASE 
   WHEN '1' THEN N'依品號'
   WHEN '2' THEN N'依總金額'
   ELSE ""
   END AS "營站佣金計算方式"
  ,TI030 AS "營站佣金比率"
  ,TI031 AS "佣金計算含稅否"
  ,TI032 AS "佣金總金額"
  ,TI033 AS "傳送次數"
  ,TI034 AS "自結碼"
  ,TI040 AS "稅別碼"

FROM PXMTI
