--CMSMJ_職務類別檔
SELECT
  ,MJ001 AS "職務代號"
  ,CASE 
   WHEN '1' THEN N'物管'
   WHEN '2' THEN N'生管'
   WHEN '3' THEN N'業務'
   WHEN '4' THEN N'採購'
   WHEN '5' THEN N'會計'
   WHEN '6' THEN N'出納'
   WHEN '7' THEN N'倉管'
   WHEN '8' THEN N'研發'
   WHEN '9' THEN N'製造'
   WHEN 'A' THEN N'品管'
   WHEN 'B' THEN N'管理'
   WHEN 'C' THEN N'工程'
   WHEN 'D' THEN N'生技'
   WHEN 'E' THEN N'船務'
   WHEN 'F' THEN N'廠務'
   WHEN 'G' THEN N'貿易'
   WHEN 'H' THEN N'總務'
   WHEN 'I' THEN N'人事'
   WHEN 'J' THEN N'保稅'
   WHEN 'K' THEN N'稽核'
   WHEN 'L' THEN N'企劃'
   WHEN 'M' THEN N'文管'
   WHEN 'N' THEN N'產品'
   WHEN 'O' THEN N'行政'
   WHEN 'P' THEN N'外點(專櫃前抬)'
   WHEN 'Z' THEN N'其它'
   ELSE ""
   END AS "職務分類"
  ,MJ003 AS "職務名稱"
  ,MJ004 AS "備註"

FROM CMSMJ
