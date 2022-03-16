--COPMB_客戶商品計價單頭資料檔
SELECT
  ,MB001 AS "客戶代號"
  ,MB002 AS "品號"
  ,MB003 AS "計價單位"
  ,MB004 AS "幣別"
  ,MB005 AS "小單位"
  ,MB007 AS "分量計價"
  ,MB008 AS "單價"
  ,MB009 AS "核價日"
  ,MB010 AS "上次銷貨日"
  ,MB012 AS "備註"
  ,MB013 AS "含稅"
  ,MB014 AS "初次交易日"
  ,MB015 AS "佣金單價"
  ,MB016 AS "佣金百分比"
  ,MB017 AS "生效日"
  ,MB018 AS "失效日"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "交易條件"
  ,MB025 AS "贈品率"

FROM COPMB
