--HRSMB_人力資源參數設定檔
SELECT
  ,MB001 AS "有人力需求預算"
  ,CASE 
   WHEN 'N' THEN N'不需要'
   WHEN 'W' THEN N'僅需警告'
   WHEN 'Y' THEN N'確實控管'
   ELSE ""
   END AS "預算控管"
  ,CASE 
   WHEN 'N' THEN N'不需要'
   WHEN 'Y' THEN N'需要'
   ELSE ""
   END AS "核對人力申請單"
  ,CASE 
   WHEN '1' THEN N'錄取'
   WHEN '2' THEN N'報到'
   ELSE ""
   END AS "人力需求單結案認定"
  ,MB005 AS "面試可重複預約"
  ,MB006 AS "面試須預約"
  ,MB007 AS "核對教育訓練申請單"

FROM HRSMB
