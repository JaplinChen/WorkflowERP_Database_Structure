--NOTTK_借還款單頭檔
SELECT
  ,TK001 AS "借/還款單別"
  ,TK002 AS "借/還款單號"
  ,TK003 AS "借/還款日期"
  ,TK004 AS "備註"
  ,TK005 AS "單據日期"
  ,TK006 AS "確認者"
  ,TK007 AS "確認碼"
  ,TK008 AS "幣別"
  ,TK009 AS "匯率"
  ,TK010 AS "列印次數"
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
  ,TK012 AS "傳送次數"

FROM NOTTK
