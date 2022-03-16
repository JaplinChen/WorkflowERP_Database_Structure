--CUSMD_合同材料用量單頭檔
SELECT
  ,MD001 AS "主件品號"
  ,MD002 AS "標準批量"
  ,MD003 AS "備註"
  ,CASE 
   WHEN '1' THEN N'系統轉入'
   WHEN '2' THEN N'自行輸入'
   WHEN '3' THEN N'轉入後修改'
   ELSE ""
   END AS "資料來源"

FROM CUSMD
