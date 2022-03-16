--CUSTR_轉廠維護單頭檔
SELECT
  ,TR001 AS "轉廠維護單別"
  ,TR002 AS "轉廠維護單號"
  ,TR003 AS "轉廠申請單別"
  ,TR004 AS "轉廠申請單別"
  ,CASE 
   WHEN '1' THEN N'轉廠進口'
   WHEN '2' THEN N'轉廠出口'
   WHEN '3' THEN N'全部'
   ELSE ""
   END AS "轉廠類型"
  ,TR006 AS "轉廠日期"
  ,TR007 AS "轉廠申請日期"
  ,TR008 AS "報關單號"
  ,TR009 AS "報關日期"
  ,TR010 AS "備註"
  ,TR011 AS "列印次數"
  ,TR012 AS "確認者"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不運行電子簽核'
   ELSE ""
   END AS "簽核狀態碼"
  ,TR014 AS "傳送次數"

FROM CUSTR
