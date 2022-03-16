--CMSNH_科系名稱資料檔
SELECT
  ,NH001 AS "科系代號"
  ,CASE 
   WHEN '1' THEN N'文'
   WHEN '2' THEN N'法'
   WHEN '3' THEN N'商'
   WHEN '4' THEN N'工'
   WHEN '5' THEN N'理'
   WHEN '6' THEN N'農'
   WHEN '7' THEN N'醫'
   WHEN '8' THEN N'其他'
   ELSE ""
   END AS "科系類別"
  ,NH003 AS "科系名稱"
  ,NH004 AS "備註"
  ,NH005 AS "是否允許修改科系名稱"

FROM CMSNH
