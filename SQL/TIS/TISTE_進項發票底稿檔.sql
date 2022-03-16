--TISTE_進項發票底稿檔
SELECT
  ,TE001 AS "來源單號"
  ,TE002 AS "來源日期"
  ,CASE 
   WHEN '1' THEN N'應付憑單'
   WHEN '2' THEN N'人工'
   ELSE ""
   END AS "來源方式"
  ,TE004 AS "銷方編號"
  ,TE005 AS "銷方名稱"
  ,TE006 AS "銷方稅號"
  ,TE007 AS "稅率"
  ,CASE 
   WHEN '0' THEN N'未匯出'
   WHEN '1' THEN N'已匯出'
   ELSE ""
   END AS "狀態碼"
  ,CASE 
   WHEN 'A' THEN N'農產品收購憑證'
   WHEN 'G' THEN N'海關代徵完稅憑證'
   WHEN 'N' THEN N'不可抵扣專用發票'
   WHEN 'S' THEN N'可抵扣專用發票'
   WHEN 'T' THEN N'運輸發票'
   WHEN 'W' THEN N'廢舊物資收購憑證'
   WHEN 'Z' THEN N'其他'
   ELSE ""
   END AS "發票種類"
  ,TE010 AS "發票類別"
  ,TE011 AS "發票號碼"
  ,TE012 AS "發票日期"
  ,TE013 AS "發票金額"
  ,TE014 AS "發票稅額"
  ,TE015 AS "付款日期"
  ,TE016 AS "入庫日期"
  ,TE017 AS "憑證序號"
  ,TE018 AS "付款金額"
  ,TE019 AS "貨物名稱"
  ,TE020 AS "付款單號"
  ,TE021 AS "數量"
  ,TE022 AS "計量單位"
  ,TE023 AS "備註"
  ,TE029 AS "註記號"

FROM TISTE
