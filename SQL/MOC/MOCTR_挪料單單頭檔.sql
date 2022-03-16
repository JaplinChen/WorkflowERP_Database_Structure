--MOCTR_挪料單單頭檔
SELECT
  ,TR001 AS "挪料單別"
  ,TR002 AS "挪料單號"
  ,TR003 AS "挪料日期"
  ,TR004 AS "轉出製令單別"
  ,TR005 AS "轉出製令單號"
  ,TR006 AS "轉入製令單別"
  ,TR007 AS "轉入製令單號"
  ,TR008 AS "挪料套數"
  ,TR009 AS "備註"
  ,TR010 AS "確認碼"
  ,TR011 AS "領料單別"
  ,TR012 AS "領料單號"
  ,TR013 AS "退料單別"
  ,TR014 AS "退料單號"
  ,TR015 AS "列印次數"
  ,TR016 AS "單據日期"
  ,TR017 AS "確認者"
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
  ,TR019 AS "傳送次數"
  ,TR020 AS "廠別代號"

FROM MOCTR
