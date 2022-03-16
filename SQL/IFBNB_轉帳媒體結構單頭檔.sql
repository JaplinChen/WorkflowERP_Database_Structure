--IFBNB_轉帳媒體結構單頭檔
SELECT
  ,NB001 AS "媒體編號"
  ,NB002 AS "媒體名稱"
  ,CASE 
   WHEN '1' THEN N'票據託收'
   WHEN '2' THEN N'銀行存提'
   WHEN '3' THEN N'薪資轉帳'
   WHEN '4' THEN N'獨立發放'
   WHEN '5' THEN N'固定轉帳金額'
   WHEN '6' THEN N'預約付款'
   ELSE ""
   END AS "媒體性質"
  ,NB004 AS "媒體檔名"
  ,NB005 AS "備註"
  ,CASE 
   WHEN '1' THEN N'固定欄寬'
   WHEN '2' THEN N'逗號區隔'
   ELSE ""
   END AS "轉出方式"

FROM IFBNB
