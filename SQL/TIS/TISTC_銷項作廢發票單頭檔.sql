--TISTC_銷項作廢發票單頭檔
SELECT
  ,TC001 AS "來源單號"
  ,TC002 AS "發票代碼"
  ,TC003 AS "發票號碼"
  ,TC004 AS "開票人"
  ,TC005 AS "開立日期"
  ,TC006 AS "商品行數"
  ,TC007 AS "買方名稱"
  ,TC008 AS "買方稅號"
  ,TC009 AS "買方地址電話"
  ,TC010 AS "買方銀行帳號"
  ,TC011 AS "備註"
  ,TC012 AS "復核人"
  ,TC013 AS "收款人"
  ,TC014 AS "銷售金額"
  ,TC015 AS "稅率"
  ,TC016 AS "賣方地址"
  ,TC017 AS "賣方銀行帳號"
  ,TC018 AS "處理結果"
  ,CASE 
   WHEN '0' THEN N'專用發票'
   WHEN '1' THEN N'普通發票'
   ELSE ""
   END AS "發票種類"
  ,TC020 AS "稅額"
  ,TC026 AS "註記號"

FROM TISTC
