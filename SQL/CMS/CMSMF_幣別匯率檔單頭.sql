--CMSMF_幣別匯率檔單頭
SELECT
  ,MF001 AS "幣別"
  ,MF002 AS "幣別名稱"
  ,CASE 
   WHEN '0' THEN N'整數'
   WHEN '1' THEN N'小數一位'
   WHEN '2' THEN N'小數二位'
   WHEN '3' THEN N'小數三位'
   WHEN '4' THEN N'小數四位'
   WHEN '5' THEN N'小數五位'
   WHEN '6' THEN N'小數六位'
   ELSE ""
   END AS "單價取位"
  ,CASE 
   WHEN '0' THEN N'整數'
   WHEN '1' THEN N'小數一位'
   WHEN '2' THEN N'小數二位'
   ELSE ""
   END AS "金額取位"
  ,CASE 
   WHEN '0' THEN N'整數'
   WHEN '1' THEN N'小數一位'
   WHEN '2' THEN N'小數二位'
   WHEN '3' THEN N'小數三位'
   WHEN '4' THEN N'小數四位'
   WHEN '5' THEN N'小數五位'
   WHEN '6' THEN N'小數六位'
   ELSE ""
   END AS "單位成本取位"
  ,CASE 
   WHEN '0' THEN N'整數'
   WHEN '1' THEN N'小數一位'
   WHEN '2' THEN N'小數二位'
   ELSE ""
   END AS "成本金額取位"
  ,MF007 AS "備註"
  ,MF013 AS "固定匯率"

FROM CMSMF
