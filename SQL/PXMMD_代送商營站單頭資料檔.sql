--PXMMD_代送商營站單頭資料檔
SELECT
  ,MD001 AS "代送商"
  ,MD002 AS "出貨庫別"
  ,CASE 
   WHEN '1' THEN N'依回籠單'
   WHEN '2' THEN N'依銷貨銷退單'
   ELSE ""
   END AS "佣金計算依據"

FROM PXMMD
