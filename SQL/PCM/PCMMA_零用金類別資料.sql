--PCMMA_零用金類別資料
SELECT
  ,MA001 AS "類別代號"
  ,MA002 AS "類別名稱"
  ,MA003 AS "會計科目"
  ,CASE 
   WHEN '1' THEN N'現金'
   WHEN '2' THEN N'轉帳'
   WHEN '3' THEN N'支票'
   ELSE ""
   END AS "轉撥方式"
  ,MA005 AS "銀行代號"
  ,MA006 AS "零用金餘額"
  ,MA007 AS "備註"
  ,MA008 AS "保管額度"

FROM PCMMA
