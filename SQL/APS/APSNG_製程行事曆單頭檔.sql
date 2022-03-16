--APSNG_製程行事曆單頭檔
SELECT
  ,CASE 
   WHEN '1' THEN N'工廠'
   WHEN '2' THEN N'銀行'
   WHEN '3' THEN N'刷卡班別'
   ELSE ""
   END AS "行業別"
  ,NG002 AS "年份"
  ,NG003 AS "班別"
  ,CASE 
   WHEN '1' THEN N'廠內'
   WHEN '2' THEN N'託外'
   ELSE ""
   END AS "性質"
  ,NG005 AS "線別/廠商代號"
  ,NG006 AS "線別/廠商名稱"
  ,NG007 AS "備註"

FROM APSNG
