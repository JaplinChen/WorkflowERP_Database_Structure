--ASTTT_未轉資產退貨單單身檔
SELECT
  ,TT001 AS "單別"
  ,TT002 AS "單號"
  ,TT003 AS "序號"
  ,TT005 AS "品名"
  ,TT006 AS "規格"
  ,TT007 AS "退貨數量"
  ,TT008 AS "單位"
  ,TT009 AS "進貨單別"
  ,TT010 AS "進貨單號"
  ,TT011 AS "進貨序號"
  ,TT012 AS "採購單別"
  ,TT013 AS "採購單號"
  ,TT014 AS "採購序號"
  ,CASE 
   WHEN '1' THEN N'資產'
   WHEN '2' THEN N'費用'
   ELSE ""
   END AS "性質"
  ,CASE 
   WHEN '1' THEN N'退貨'
   WHEN '2' THEN N'折讓'
   ELSE ""
   END AS "類型"
  ,TT017 AS "計價數量"
  ,TT018 AS "原幣單位進價"
  ,TT019 AS "原幣退貨金額"
  ,TT020 AS "原幣未稅金額"
  ,TT021 AS "原幣稅額"
  ,TT022 AS "本幣未稅金額"
  ,TT023 AS "本幣稅額"
  ,TT024 AS "確認碼"
  ,TT025 AS "結帳碼"
  ,TT026 AS "備註"
  ,TT028 AS "應付憑單別"
  ,TT029 AS "應付憑單號"
  ,TT030 AS "應付憑單序號"
  ,TT031 AS "預算編號"
  ,TT032 AS "預算科目"
  ,TT033 AS "預算部門"

FROM ASTTT
