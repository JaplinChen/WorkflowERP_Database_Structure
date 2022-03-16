--EPSME_常用條款備註資料
SELECT
  ,CASE 
   WHEN '1' THEN N'受訂確認書'
   WHEN '2' THEN N'出貨通知單'
   WHEN '3' THEN N'PACKING LIST'
   WHEN '4' THEN N'INVOICE'
   WHEN '5' THEN N'PROFORMA INVOICE'
   ELSE ""
   END AS "列印文件"
  ,ME002 AS "代號"
  ,ME003 AS "文件表頭之常用條款備註1"
  ,ME004 AS "文件表頭之常用條款備註2"
  ,ME005 AS "文件表尾之常用條款備註1"
  ,ME006 AS "文件表尾之常用條款備註2"

FROM EPSME
