--ACTTL_自定義報表結構單頭檔
SELECT
  ,TL001 AS "報表編號"
  ,TL002 AS "報表名稱"
  ,TL003 AS "標題欄行數"
  ,CASE 
   WHEN '1' THEN N'資產負債表,'
   WHEN '2' THEN N'利潤表,'
   WHEN '3' THEN N'應交增值稅明細表,'
   WHEN '4' THEN N'資產減值準備明細表,'
   WHEN '5' THEN N'股東權益變動表,'
   WHEN '6' THEN N'利潤分配表,'
   WHEN '7' THEN N'其他'
   ELSE ""
   END AS "報表類型"
  ,TL005 AS "備註"

FROM ACTTL
