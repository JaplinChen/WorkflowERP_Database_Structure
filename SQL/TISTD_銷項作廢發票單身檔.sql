--TISTD_銷項作廢發票單身檔
SELECT
  ,TD001 AS "來源單號"
  ,TD002 AS "發票代碼"
  ,TD003 AS "發票號碼"
  ,TD004 AS "序號"
  ,TD005 AS "品名"
  ,TD006 AS "規格"
  ,TD007 AS "單位"
  ,TD008 AS "數量"
  ,TD009 AS "本幣金額"
  ,TD010 AS "商品類別"
  ,TD011 AS "單價"
  ,CASE 
   WHEN '0' THEN N'不含稅單價和金額'
   WHEN '1' THEN N'含稅單價和金額'
   ELSE ""
   END AS "價格方式"
  ,TD013 AS "稅率"
  ,TD014 AS "稅額"
  ,TD020 AS "註記號"

FROM TISTD
