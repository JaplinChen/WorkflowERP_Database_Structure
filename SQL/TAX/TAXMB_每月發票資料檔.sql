--TAXMB_每月發票資料檔
SELECT
  ,MB001 AS "申報公司"
  ,MB002 AS "起始年月"
  ,MB003 AS "截止年月"
  ,CASE 
   WHEN '1' THEN N'二聯'
   WHEN '2' THEN N'三聯'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   ELSE ""
   END AS "發票聯數"
  ,MB005 AS "使用順序碼"
  ,MB006 AS "起始編號"
  ,MB007 AS "截止編號"
  ,MB008 AS "已用編號"
  ,MB009 AS "備註"
  ,MB021 AS "電子發票"

FROM TAXMB
