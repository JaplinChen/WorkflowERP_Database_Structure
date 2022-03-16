--BCSTE_出廠放行單單據單頭檔
SELECT
  ,TE001 AS "單別"
  ,TE002 AS "單號"
  ,TE003 AS "出廠日期"
  ,TE004 AS "出廠時間(時:分)"
  ,CASE 
   WHEN '1' THEN N'成品出口'
   WHEN '2' THEN N'成品補稅'
   ELSE ""
   END AS "出廠原因"
  ,TE006 AS "出廠其他原因"
  ,TE007 AS "有關單證號碼"
  ,TE008 AS "保稅碼"
  ,TE009 AS "運輸工具號碼"
  ,TE010 AS "運達地點"
  ,TE011 AS "提貨人"
  ,TE012 AS "回廠碼"
  ,TE013 AS "預計回廠日期"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TE015 AS "單據日期"
  ,TE016 AS "確認者"
  ,TE017 AS "列印次數"
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
  ,TE019 AS "傳送次數"
  ,TE020 AS "備註"
  ,TE021 AS "製令單別"
  ,TE022 AS "製令單號"
  ,TE023 AS "出廠紀錄卡號"
  ,TE024 AS "海關放行單證號"
  ,TE025 AS "區分碼"
  ,TE026 AS "核銷碼"
  ,TE027 AS "核准回廠日期"
  ,TE028 AS "總件數"
  ,TE029 AS "核銷日期"
  ,TE030 AS "管理局核准文號"

FROM BCSTE
