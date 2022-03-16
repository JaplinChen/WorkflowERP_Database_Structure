--MPSTF_資源耗用明細檔
SELECT
  ,TF001 AS "計劃批號"
  ,TF002 AS "資源代號"
  ,TF003 AS "日期"
  ,TF004 AS "瓶頸耗用"
  ,TF005 AS "非瓶頸耗用"
  ,CASE 
   WHEN '1' THEN N'製令,'
   WHEN '2' THEN N'計劃'
   ELSE ""
   END AS "耗用來源"
  ,CASE 
   WHEN '0' THEN N'製令'
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'銷售預測'
   WHEN '3' THEN N'獨立需求'
   ELSE ""
   END AS "需求來源"
  ,TF008 AS "來源單別"
  ,TF009 AS "來源單號"
  ,TF010 AS "來源序號"
  ,TF011 AS "BOM節點"

FROM MPSTF
