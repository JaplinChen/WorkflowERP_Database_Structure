--PCMTB_零用金轉撥單身檔
SELECT
  ,TB001 AS "轉撥單別"
  ,TB002 AS "轉撥單號"
  ,TB003 AS "零用金類別"
  ,TB004 AS "轉撥金額"
  ,CASE 
   WHEN '1' THEN N'現金'
   WHEN '2' THEN N'轉帳'
   WHEN '3' THEN N'支票'
   ELSE ""
   END AS "轉撥方式"
  ,TB006 AS "備註"
  ,TB007 AS "確認碼"

FROM PCMTB
