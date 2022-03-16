--IDLMU_Body版本資料檔
SELECT
  ,MU001 AS "Body代號"
  ,MU002 AS "序號"
  ,MU003 AS "版本"
  ,CASE 
   WHEN 'R' THEN N'Risk'
   WHEN 'H' THEN N'Hold'
   WHEN 'P' THEN N'Replase'
   WHEN 'E' THEN N'Engineer'
   ELSE ""
   END AS "狀態碼"
  ,MU005 AS "ENC_NO"
  ,MU006 AS "Code_Version_Rule"
  ,MU007 AS "有效日期"
  ,MU008 AS "量產碼"
  ,MU009 AS "光罩群組外部料號"
  ,MU010 AS "光罩廠代號"
  ,MU011 AS "幣別"
  ,MU012 AS "金額"
  ,MU013 AS "產生光罩外部料號"
  ,MU014 AS "備註"
  ,MU015 AS "單位"

FROM IDLMU
