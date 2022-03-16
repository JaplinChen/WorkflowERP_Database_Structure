--FCSNL_被投資帳冊股東權益變動表
SELECT
  ,NL001 AS "分類代號"
  ,NL002 AS "分類名稱"
  ,CASE 
   WHEN '1' THEN N'前段'
   WHEN '2' THEN N'保留盈餘'
   WHEN '3' THEN N'權益調整'
   WHEN '4' THEN N'後段'
   WHEN '5' THEN N'少數股權'
   ELSE ""
   END AS "分類屬性"
  ,NL004 AS "備註"
  ,NL008 AS "會計制度"
  ,NL011 AS "公司代號"

FROM FCSNL
