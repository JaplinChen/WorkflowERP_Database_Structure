--EPSMC_商品包裝資料單身
SELECT
  ,MC001 AS "商品品號"
  ,MC002 AS "單位"
  ,MC003 AS "包裝方式"
  ,MC004 AS "包裝名稱"
  ,MC005 AS "內包裝含商品數"
  ,MC006 AS "外包裝含內包裝數"
  ,MC007 AS "內包裝重量"
  ,MC008 AS "外包裝重量"
  ,MC009 AS "淨重(Kg)"
  ,MC010 AS "毛重(Kg)"
  ,MC011 AS "材積(CUFT)"
  ,MC012 AS "備註"
  ,MC013 AS "長(CM)"
  ,MC014 AS "寬(CM)"
  ,MC015 AS "高(CM)"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"

FROM EPSMC
