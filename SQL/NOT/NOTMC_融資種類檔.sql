--NOTMC_融資種類檔
SELECT
  ,MC001 AS "融資種類"
  ,MC002 AS "名稱"
  ,CASE 
   WHEN '1' THEN N'L/C'
   WHEN '2' THEN N'INVOICE'
   WHEN '3' THEN N'應付商業本票/承兌匯票'
   WHEN '4' THEN N'應收票據'
   WHEN '5' THEN N'資產抵押'
   WHEN '6' THEN N'票據抵押開L/C'
   WHEN '9' THEN N'其它'
   ELSE ""
   END AS "融資性質"

FROM NOTMC
