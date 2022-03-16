--COPMI_派車資料設定檔
SELECT
  ,MI001 AS "運送方式"
  ,MI002 AS "車號"
  ,MI003 AS "送貨者"
  ,MI004 AS "送貨者名稱"
  ,MI005 AS "主要路線"
  ,MI006 AS "限制材積"
  ,MI007 AS "限重"
  ,MI008 AS "單件運費"
  ,MI009 AS "總運費"
  ,CASE 
   WHEN '1' THEN N'英制'
   WHEN '2' THEN N'公制'
   ELSE ""
   END AS "材積單位"

FROM COPMI
