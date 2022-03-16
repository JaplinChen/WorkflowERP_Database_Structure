--APSNH_製程行事曆單身檔
SELECT
  ,CASE 
   WHEN '1' THEN N'工廠'
   WHEN '2' THEN N'銀行'
   WHEN '3' THEN N'刷卡班別'
   ELSE ""
   END AS "行業別"
  ,NH002 AS "年份"
  ,NH003 AS "班別"
  ,CASE 
   WHEN '1' THEN N'廠內'
   WHEN '2' THEN N'託外'
   ELSE ""
   END AS "性質"
  ,NH005 AS "線別/廠商代號"
  ,NH006 AS "日期"
  ,NH007 AS "工作時數"
  ,NH008 AS "增減時數"
  ,NH009 AS "效率"
  ,NH010 AS "備註"

FROM APSNH
