--PALMY_固定金額轉帳設定檔
SELECT
  ,MY001 AS "員工代號"
  ,CASE 
   WHEN '1' THEN N'上半月'
   WHEN '2' THEN N'下半月或全月'
   ELSE ""
   END AS "轉帳期間"
  ,MY003 AS "行(局)號"
  ,MY004 AS "立帳帳號"
  ,CASE 
   WHEN 'B' THEN N'銀行'
   WHEN 'P' THEN N'郵局'
   ELSE ""
   END AS "轉存方式"
  ,MY006 AS "固定轉帳金額"
  ,MY007 AS "備註"
  ,MY008 AS "開始轉帳年月"
  ,MY009 AS "截止轉帳年月"
  ,MY010 AS "行(局)號"

FROM PALMY
