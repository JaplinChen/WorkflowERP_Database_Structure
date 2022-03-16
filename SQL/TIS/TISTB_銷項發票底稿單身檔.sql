--TISTB_銷項發票底稿單身檔
SELECT
  ,TB001 AS "來源單號"
  ,TB002 AS "序號"
  ,CASE 
   WHEN '1' THEN N'公司品名'
   WHEN '2' THEN N'客戶品名'
   ELSE ""
   END AS "品名來源"
  ,TB004 AS "品號"
  ,TB005 AS "品名"
  ,TB006 AS "規格"
  ,TB007 AS "客戶品號"
  ,TB008 AS "客戶品名"
  ,TB009 AS "客戶規格"
  ,TB010 AS "單位"
  ,TB011 AS "數量"
  ,TB012 AS "本幣金額"
  ,TB013 AS "商品類別"
  ,TB014 AS "折扣金額"
  ,TB015 AS "本幣稅額"
  ,TB016 AS "折扣稅額"
  ,TB017 AS "折扣率"
  ,TB018 AS "新品名"
  ,TB019 AS "新規格"
  ,TB020 AS "新單位"
  ,TB021 AS "新數量"
  ,TB022 AS "新本幣金額"
  ,TB023 AS "新商品類別"
  ,TB024 AS "單價"
  ,CASE 
   WHEN '0' THEN N'不含稅單價和金額'
   WHEN '1' THEN N'含稅單價和金額'
   ELSE ""
   END AS "價格方式"
  ,TB026 AS "稅率"
  ,TB027 AS "新單價"
  ,CASE 
   WHEN '0' THEN N'不含稅單價和金額'
   WHEN '1' THEN N'含稅單價和金額'
   ELSE ""
   END AS "新價格方式"
  ,TB029 AS "新稅率"
  ,TB030 AS "新稅額"

FROM TISTB
