--MTPMB_多角貿易流程代號單身資料
SELECT
  ,MB001 AS "流程代號"
  ,MB002 AS "序號"
  ,MB003 AS "下游廠商"
  ,MB004 AS "計價幣別"
  ,MB005 AS "付款條件代號"
  ,MB006 AS "營業稅率"
  ,CASE 
   WHEN '1' THEN N'內含'
   WHEN '2' THEN N'外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'普通發票'
   WHEN 'C' THEN N'免用發票'
   ELSE ""
   END AS "發票聯數"
  ,MB009 AS "主機IP"
  ,MB010 AS "公司代號"
  ,MB011 AS "公司別資料庫"
  ,MB015 AS "銷項稅別碼"
  ,MB017 AS "稅別碼"
  ,MB018 AS "廠別"
  ,MB019 AS "庫別"

FROM MTPMB
