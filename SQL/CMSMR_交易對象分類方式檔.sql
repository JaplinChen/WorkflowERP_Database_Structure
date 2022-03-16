--CMSMR_交易對象分類方式檔
SELECT
  ,CASE 
   WHEN '1' THEN N'通路'
   WHEN '2' THEN N'型態'
   WHEN '3' THEN N'地區'
   WHEN '4' THEN N'國家'
   WHEN '5' THEN N'路線'
   WHEN '6' THEN N'其他'
   WHEN '7' THEN N'抽成'
   WHEN '8' THEN N'活動'
   WHEN '9' THEN N'廠商分類'
   ELSE ""
   END AS "分類方式"
  ,MR002 AS "代號"
  ,MR003 AS "簡稱"
  ,MR004 AS "全名"
  ,MR005 AS "備註"

FROM CMSMR
