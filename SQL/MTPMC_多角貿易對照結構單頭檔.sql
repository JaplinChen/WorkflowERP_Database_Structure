--MTPMC_多角貿易對照結構單頭檔
SELECT
  ,MC001 AS "來源產品別"
  ,MC002 AS "目的產品別"
  ,MC003 AS "來源版號"
  ,MC004 AS "目的版號"
  ,CASE 
   WHEN '1' THEN N'標準'
   WHEN '2' THEN N'客戶自訂'
   ELSE ""
   END AS "區分"
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'訂單變更'
   WHEN '3' THEN N'銷貨'
   WHEN '4' THEN N'結帳'
   WHEN '5' THEN N'銷退'
   WHEN '6' THEN N'採購'
   WHEN '7' THEN N'採購變更'
   WHEN '8' THEN N'退貨'
   ELSE ""
   END AS "拋轉單據"

FROM MTPMC
