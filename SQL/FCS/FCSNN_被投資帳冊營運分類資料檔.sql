--FCSNN_被投資帳冊營運分類資料檔
SELECT
  ,CASE 
   WHEN '1' THEN N'基本資料'
   WHEN '2' THEN N'自訂營運分類'
   WHEN '3' THEN N'營運部門群組'
   ELSE ""
   END AS "資料來源一"
  ,NN002 AS "營運分類一"
  ,CASE 
   WHEN '1' THEN N'基本資料'
   WHEN '2' THEN N'自訂營運分類'
   WHEN '3' THEN N'營運部門群組'
   ELSE ""
   END AS "資料來源二"
  ,NN004 AS "營運分類二"
  ,CASE 
   WHEN '1' THEN N'基本資料'
   WHEN '2' THEN N'自訂營運分類'
   WHEN '3' THEN N'營運部門群組'
   ELSE ""
   END AS "資料來源三"
  ,NN006 AS "營運分類三"
  ,NN018 AS "公司代號"

FROM FCSNN
