--COPUG_費用預估資料單身檔
SELECT
  ,CASE 
   WHEN '1' THEN N'報價'
   WHEN '2' THEN N'訂單'
   ELSE ""
   END AS "預估類型"
  ,UG002 AS "預估單別"
  ,UG003 AS "預估單號"
  ,UG004 AS "序號"
  ,UG005 AS "費用代號"
  ,CASE 
   WHEN '1' THEN N'依金額'
   WHEN '2' THEN N'依數量'
   WHEN '3' THEN N'依毛重'
   WHEN '4' THEN N'依材積'
   ELSE ""
   END AS "費用分攤方式"
  ,UG007 AS "幣別"
  ,UG008 AS "匯率"
  ,UG009 AS "原幣金額"
  ,UG010 AS "本幣金額"
  ,UG011 AS "備註"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'農產品收購憑證'
   WHEN 'G' THEN N'海關代徵完稅憑證'
   WHEN 'N' THEN N'不可抵扣專用發票'
   WHEN 'S' THEN N'可抵扣專用發票'
   WHEN 'T' THEN N'運輸發票'
   WHEN 'W' THEN N'廢舊物資收購憑證'
   WHEN 'Z' THEN N'其他'
   ELSE ""
   END AS "預留欄位"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "預留欄位"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "預留欄位"
  ,UG040 AS "註記號"
  ,CASE 
   WHEN '1' THEN N'費用'
   WHEN '2' THEN N'加扣項'
   ELSE ""
   END AS "類型"
  ,CASE 
   WHEN '1' THEN N'按比率'
   WHEN '2' THEN N'取金額'
   ELSE ""
   END AS "加扣方式"
  ,UG043 AS "金額比率"

FROM COPUG
