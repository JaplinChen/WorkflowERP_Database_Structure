--CSTMI_本階標準成本設定單身檔
SELECT
  ,MI001 AS "成本計算代號"
  ,MI002 AS "品號"
  ,MI003 AS "品名"
  ,MI004 AS "規格"
  ,MI005 AS "單位"
  ,CASE 
   WHEN 'P' THEN N'採購件'
   WHEN 'M' THEN N'自制件'
   WHEN 'S' THEN N'托外加工件'
   ELSE ""
   END AS "品號屬性"
  ,MI007 AS "本階標準材料成本"
  ,MI008 AS "標準工時"
  ,MI009 AS "本階標準加工費用"
  ,MI010 AS "本階標準人工成本"
  ,MI011 AS "本階標準製造費用"
  ,MI012 AS "標準機時"

FROM CSTMI
