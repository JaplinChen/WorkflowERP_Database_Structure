--IDLNH_特殊產品品號BIN資料單身
SELECT
  ,NH001 AS "品號"
  ,NH002 AS "等級代號"
  ,CASE 
   WHEN '1' THEN N'良品'
   WHEN '2' THEN N'不良品'
   WHEN '3' THEN N'廢品'
   ELSE ""
   END AS "性質"
  ,NH004 AS "備註"
  ,NH010 AS "更新"

FROM IDLNH
