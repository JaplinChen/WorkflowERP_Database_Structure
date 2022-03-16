--YPANH_員工語言能力檔
SELECT
  ,NH001 AS "員工編號"
  ,NH002 AS "序號"
  ,NH003 AS "語言能力代號"
  ,CASE 
   WHEN '1' THEN N'精通'
   WHEN '2' THEN N'熟練'
   WHEN '3' THEN N'良好'
   WHEN '4' THEN N'一般'
   WHEN '5' THEN N'不會'
   ELSE ""
   END AS "聽"
  ,CASE 
   WHEN '1' THEN N'精通'
   WHEN '2' THEN N'熟練'
   WHEN '3' THEN N'良好'
   WHEN '4' THEN N'一般'
   WHEN '5' THEN N'不會'
   ELSE ""
   END AS "說"
  ,CASE 
   WHEN '1' THEN N'精通'
   WHEN '2' THEN N'熟練'
   WHEN '3' THEN N'良好'
   WHEN '4' THEN N'一般'
   WHEN '5' THEN N'不會'
   ELSE ""
   END AS "讀"
  ,CASE 
   WHEN '1' THEN N'精通'
   WHEN '2' THEN N'熟練'
   WHEN '3' THEN N'良好'
   WHEN '4' THEN N'一般'
   WHEN '5' THEN N'不會'
   ELSE ""
   END AS "寫"
  ,NH009 AS "備註"

FROM YPANH
