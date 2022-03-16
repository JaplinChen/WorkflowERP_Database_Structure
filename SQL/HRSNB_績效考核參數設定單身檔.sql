--HRSNB_績效考核參數設定單身檔
SELECT
  ,NB001 AS "隱藏欄位"
  ,NB002 AS "序號"
  ,CASE 
   WHEN '1' THEN N'獎懲'
   WHEN '2' THEN N'請休假'
   ELSE ""
   END AS "考核項目"
  ,NB004 AS "代號"
  ,CASE 
   WHEN '1' THEN N'加'
   WHEN '-1' THEN N'扣'
   ELSE ""
   END AS "加扣分"
  ,CASE 
   WHEN '1' THEN N'固定值'
   WHEN '2' THEN N'依數量'
   ELSE ""
   END AS "加扣方式"
  ,NB007 AS "寬減數量"
  ,NB008 AS "每單位扣總分"
  ,NB009 AS "固定加扣分"

FROM HRSNB
