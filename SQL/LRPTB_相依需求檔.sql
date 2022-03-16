--LRPTB_相依需求檔
SELECT
  ,TB001 AS "計劃批號"
  ,TB002 AS "生產品號"
  ,TB003 AS "完工日"
  ,TB004 AS "加工廠商/線別"
  ,TB005 AS "材料品號"
  ,TB006 AS "製程順序"
  ,TB007 AS "需領用量"
  ,TB008 AS "庫別"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "材料型態"
  ,TB010 AS "備註"
  ,TB011 AS "上階品號"
  ,TB012 AS "計劃別"
  ,TB013 AS "生產序號"
  ,TB014 AS "相依序號"
  ,TB015 AS "預計領料日"
  ,TB016 AS "取替代件"
  ,TB017 AS "APS規劃製令號碼"
  ,TB023 AS "被取替代品號"
  ,TB024 AS "總領用量"
  ,TB026 AS "優先順序"

FROM LRPTB
