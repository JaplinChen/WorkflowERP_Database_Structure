--NOTTR_預購售外幣資料檔
SELECT
  ,TR001 AS "銀行代號"
  ,TR002 AS "交易別"
  ,TR003 AS "交易日期"
  ,TR004 AS "序號"
  ,TR005 AS "契約書號碼"
  ,TR006 AS "幣別"
  ,TR007 AS "匯率"
  ,TR008 AS "原幣金額"
  ,TR009 AS "本幣金額"
  ,TR010 AS "已交割原幣金額"
  ,TR011 AS "可交割日"
  ,TR012 AS "到期日"
  ,CASE 
   WHEN 'N' THEN N'未結案'
   WHEN 'Y' THEN N'自動結案'
   WHEN 'y' THEN N'指定結案'
   ELSE ""
   END AS "結案碼"
  ,TR014 AS "備註"
  ,TR015 AS "確認日期"
  ,TR016 AS "確認者"
  ,TR017 AS "確認碼"
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
   END AS "簽核狀態"

FROM NOTTR
