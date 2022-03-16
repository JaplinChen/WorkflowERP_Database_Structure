--COPUN_遞延收入明細單身檔
SELECT
  ,CASE 
   WHEN '1' THEN N'銷貨'
   WHEN '2' THEN N'銷退'
   WHEN '3' THEN N'結帳單'
   ELSE ""
   END AS "來源"
  ,UN002 AS "單別"
  ,UN003 AS "單號"
  ,UN004 AS "序號"
  ,UN005 AS "迴轉年度"
  ,UN006 AS "月份"
  ,UN007 AS "每月迴轉金額"
  ,UN008 AS "目前期數"
  ,UN009 AS "迴轉傳票單別"
  ,UN010 AS "迴轉傳票單號"
  ,UN011 AS "迴轉傳票序號"
  ,UN012 AS "備註"
  ,CASE 
   WHEN '1' THEN N'批次產生'
   WHEN '2' THEN N'自行輸入'
   ELSE ""
   END AS "產生來源"

FROM COPUN
