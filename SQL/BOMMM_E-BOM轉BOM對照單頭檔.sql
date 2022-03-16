--BOMMM_E-BOM轉BOM對照單頭檔
SELECT
  ,MM001 AS "工程主件品號"
  ,MM002 AS "正式主件品號"
  ,MM003 AS "生效日期"
  ,MM004 AS "失效日期"
  ,CASE 
   WHEN '0' THEN N'不需更新/'
   WHEN '1' THEN N'未更新/'
   WHEN '2' THEN N'已更新'
   ELSE ""
   END AS "品號更新碼"
  ,MM006 AS "BOM更新碼"
  ,MM007 AS "BOM更新日期"
  ,MM008 AS "BOM更新者"

FROM BOMMM
