--CSTMZ_標準成本計算條件設定檔
SELECT
  ,MZ001 AS "成本計算代號"
  ,MZ002 AS "成本計算名稱"
  ,MZ003 AS "計算損耗率"
  ,CASE 
   WHEN '1' THEN N'依本階標準材料成本'
   WHEN '2' THEN N'依最近進價'
   ELSE ""
   END AS "材料成本"
  ,CASE 
   WHEN '1' THEN N'依品號'
   WHEN '2' THEN N'依產品途程'
   ELSE ""
   END AS "標準工時"
  ,CASE 
   WHEN '1' THEN N'全部統一'
   WHEN '2' THEN N'依生產線制定'
   ELSE ""
   END AS "標準工資率"
  ,CASE 
   WHEN '1' THEN N'全部統一'
   WHEN '2' THEN N'依生產線制定'
   ELSE ""
   END AS "標準製費分攤率"
  ,MZ008 AS "最近計算年月"
  ,MZ009 AS "僅考慮BOM中標準成本計算元件"
  ,CASE 
   WHEN '1' THEN N'依本階標準加工費用'
   WHEN '2' THEN N'依產品途程'
   ELSE ""
   END AS "加工費用"
  ,CASE 
   WHEN '1' THEN N'依本階標準人工成本'
   WHEN '2' THEN N'依標準工時＊線別標準單位人工成本'
   ELSE ""
   END AS "人工成本"
  ,CASE 
   WHEN '1' THEN N'依本階標準製造費用'
   WHEN '2' THEN N'依製費分攤依據數據＊線別標準單位製造費用'
   ELSE ""
   END AS "製造費用"
  ,CASE 
   WHEN '1' THEN N'依品號'
   WHEN '2' THEN N'依產品途程'
   ELSE ""
   END AS "標準機時"

FROM CSTMZ
