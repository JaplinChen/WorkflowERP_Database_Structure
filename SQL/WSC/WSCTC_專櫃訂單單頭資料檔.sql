--WSCTC_專櫃訂單單頭資料檔
SELECT
  ,TC001 AS "單別"
  ,TC002 AS "單號"
  ,TC003 AS "訂單日期"
  ,TC004 AS "專櫃代號"
  ,TC005 AS "貴賓卡號"
  ,TC006 AS "單據日期"
  ,TC007 AS "營業人員"
  ,TC008 AS "備註"
  ,TC009 AS "確認碼"
  ,TC010 AS "付款ＩＤ(1)"
  ,TC011 AS "付款名稱(1)"
  ,TC012 AS "付款金額(1)"
  ,TC013 AS "付款ＩＤ(2)"
  ,TC014 AS "付款名稱(2)"
  ,TC015 AS "付款金額(2)"
  ,TC016 AS "付款ＩＤ(3)"
  ,TC017 AS "付款名稱(3)"
  ,TC018 AS "付款金額(3)"
  ,TC019 AS "付款ＩＤ(4)"
  ,TC020 AS "付款名稱(4)"
  ,TC021 AS "付款金額(4)"
  ,TC022 AS "付款ＩＤ(5)"
  ,TC023 AS "付款名稱(5)"
  ,TC024 AS "付款金額(5)"
  ,TC025 AS "付款金額合計"
  ,TC026 AS "金額"
  ,TC027 AS "訂金沖抵碼"
  ,TC028 AS "產生分錄"
  ,TC029 AS "確認者"
  ,TC030 AS "提貨日期"
  ,TC031 AS "營業單別"
  ,TC032 AS "營業單號"
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

FROM WSCTC
