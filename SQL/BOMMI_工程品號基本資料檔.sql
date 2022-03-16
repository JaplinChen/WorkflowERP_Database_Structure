--BOMMI_工程品號基本資料檔
SELECT
  ,MI001 AS "工程品號"
  ,MI002 AS "品名"
  ,MI003 AS "規格"
  ,MI004 AS "庫存單位"
  ,MI005 AS "[品號分類一]"
  ,MI006 AS "正式品號"
  ,MI007 AS "標準途程品號"
  ,MI008 AS "標準途程代號"
  ,CASE 
   WHEN 'P' THEN N'採購件'
   WHEN 'M' THEN N'自製件'
   WHEN 'S' THEN N'託外加工件'
   WHEN 'Y' THEN N'虛設品號'
   WHEN 'F' THEN N'Feature件'
   WHEN 'O' THEN N'Option件'
   ELSE ""
   END AS "品號屬性"
  ,MI010 AS "標準進價"
  ,MI011 AS "保稅品"
  ,MI012 AS "備註"
  ,MI013 AS "修改品名/規格"
  ,MI015 AS "產品圖號"
  ,MI016 AS "圖號版次"
  ,CASE 
   WHEN '1' THEN N'PLM'
   ELSE ""
   END AS "來源"

FROM BOMMI
