--NOTTL_借還款單身檔
SELECT
  ,TL001 AS "借/還款單別"
  ,TL002 AS "借/還款單號"
  ,TL003 AS "序號"
  ,TL004 AS "產生分錄碼"
  ,TL005 AS "借款批號"
  ,CASE 
   WHEN '1' THEN N'現金'
   WHEN '2' THEN N'轉帳'
   WHEN '3' THEN N'應付票據'
   WHEN '4' THEN N'應收票據'
   ELSE ""
   END AS "方式"
  ,TL009 AS "銀行代號"
  ,TL010 AS "票號"
  ,TL011 AS "本金金額"
  ,TL012 AS "利息金額"
  ,TL013 AS "科目代號"
  ,TL014 AS "備註"
  ,TL015 AS "確認碼"
  ,TL016 AS "傳票單別"
  ,TL017 AS "傳票單號"
  ,TL018 AS "預付購料借款明細單別"
  ,TL019 AS "預付購料借款明細單號"
  ,TL020 AS "預付購料借款明細序號"
  ,TL026 AS "本國幣別金額小計"
  ,TL027 AS "融資群組"
  ,TL028 AS "幣別"
  ,TL029 AS "匯率"
  ,TL030 AS "信貸幣別"

FROM NOTTL
