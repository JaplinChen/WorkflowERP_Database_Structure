--IDLNB_投片計算參數設定檔
SELECT
  ,CASE 
   WHEN '1' THEN N'客戶訂單'
   WHEN '2' THEN N'銷售預測'
   WHEN '9' THEN N'全部'
   ELSE ""
   END AS "計劃依據"
  ,NB002 AS "廠別"
  ,CASE 
   WHEN 'M' THEN N'依MRP需求'
   WHEN 'L' THEN N'依LRP需求'
   WHEN '0' THEN N'全部'
   ELSE ""
   END AS "補貨政策"
  ,CASE 
   WHEN '1' THEN N'淨需求'
   WHEN '2' THEN N'毛需求'
   ELSE ""
   END AS "需求計算方式"
  ,NB005 AS "考慮庫存可用量"
  ,NB006 AS "考慮安全存量"
  ,NB007 AS "供給量日期納入考慮"
  ,NB008 AS "需求量日期納入考慮"
  ,NB009 AS "客供料計算"
  ,NB010 AS "取替代件納入計算"
  ,NB011 AS "產生不需補充料件"
  ,NB012 AS "拋BOM單頭備註"
  ,NB013 AS "拋BOM單身備註"
  ,CASE 
   WHEN '1' THEN N'來源庫別'
   WHEN '2' THEN N'主要庫別'
   ELSE ""
   END AS "寫入主階件維護檔的庫別"
  ,NB015 AS "採購單別一"
  ,NB016 AS "採購單別二"
  ,NB017 AS "採購單別三"
  ,NB018 AS "採購單別四"
  ,NB019 AS "採購單別五"
  ,NB020 AS "委工單別一"
  ,NB021 AS "委工單別二"
  ,NB022 AS "委工單別三"
  ,CASE 
   WHEN '1' THEN N'生產計劃'
   WHEN '2' THEN N'採購計劃'
   WHEN '3' THEN N'全部'
   ELSE ""
   END AS "需產生的計劃"
  ,CASE 
   WHEN '1' THEN N'不再補充'
   WHEN '2' THEN N'重新補充'
   WHEN '3' THEN N'補充差額'
   ELSE ""
   END AS "已發放料件之補充方式"
  ,NB025 AS "型態"
  ,NB031 AS "不發料計算"
  ,NB032 AS "考慮主要領料庫別"

FROM IDLNB
