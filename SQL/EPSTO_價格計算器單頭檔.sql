--EPSTO_價格計算器單頭檔
SELECT
  ,TO001 AS "業務人員"
  ,TO002 AS "客戶代號"
  ,TO003 AS "運費代號"
  ,TO004 AS "運輸方式"
  ,TO005 AS "出口港"
  ,TO006 AS "經過港口"
  ,TO007 AS "目的港口"
  ,TO008 AS "幣別"
  ,TO009 AS "匯率"
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
   END AS "交易條件1"
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
   END AS "交易條件2"
  ,TO012 AS "CUFT"
  ,TO013 AS "KG"
  ,TO014 AS "20呎櫃"
  ,TO015 AS "40呎櫃"
  ,CASE 
   WHEN '1' THEN N'20呎櫃'
   WHEN '2' THEN N'40呎櫃'
   WHEN '3' THEN N'CUFT'
   WHEN '4' THEN N'KG'
   ELSE ""
   END AS "試算選擇"
  ,TO017 AS "保險費率"
  ,TO018 AS "利潤比率"
  ,TO019 AS "佣金比率"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"
  ,TO021 AS "備註"

FROM EPSTO
