--MRPTC_MRP供需明細檔
SELECT
  ,TC001 AS "計劃批號"
  ,TC002 AS "品號"
  ,TC003 AS "時距日期"
  ,TC004 AS "供給/需求"
  ,TC005 AS "供需日期"
  ,TC006 AS "來源"
  ,CASE 
   WHEN '0' THEN N'庫存-安全存量'
   WHEN '1' THEN N'預計產'
   WHEN '2' THEN N'請購量'
   WHEN '3' THEN N'預計進'
   WHEN '4' THEN N'計劃產'
   WHEN '5' THEN N'計劃採'
   WHEN '6' THEN N'被替代'
   WHEN '7' THEN N'預計銷'
   WHEN '8' THEN N'預計領'
   WHEN '9' THEN N'計劃銷'
   WHEN 'A' THEN N'計劃領'
   WHEN 'B' THEN N'替代他料'
   WHEN 'C' THEN N'重排增加'
   WHEN 'D' THEN N'重排減少'
   WHEN 'E' THEN N'請拋採預計進'
   ELSE ""
   END AS "依據"
  ,TC008 AS "數量"
  ,TC009 AS "主件品號"
  ,TC010 AS "製程代號"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "材料型態"
  ,TC012 AS "主件時距日期"
  ,TC013 AS "備註"

FROM MRPTC
