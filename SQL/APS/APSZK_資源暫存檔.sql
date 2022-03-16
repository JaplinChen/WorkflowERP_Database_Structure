--APSZK_資源暫存檔
SELECT
  ,ZK001 AS "廠別代號"
  ,ZK002 AS "資源代號"
  ,ZK003 AS "工作站代號"
  ,ZK004 AS "週行事曆代號"
  ,ZK005 AS "日行事曆代號"
  ,CASE 
   WHEN '0' THEN N'有限產能'
   WHEN '1' THEN N'無限產能'
   ELSE ""
   END AS "產能型態"
  ,ZK007 AS "資源名稱"
  ,ZK008 AS "連批條件檢查碼"
  ,ZK009 AS "設備效率"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"
  ,ZK016 AS "設備規格一"
  ,ZK017 AS "設備規格二"
  ,ZK018 AS "設備規格三"
  ,ZK019 AS "設備規格四"
  ,ZK020 AS "設備規格五"
  ,ZK021 AS "設備規格六"
  ,ZK022 AS "設備規格七"
  ,ZK023 AS "設備規格八"
  ,ZK024 AS "設備規格九"
  ,ZK025 AS "設備規格十"
  ,ZK026 AS "設備規格十一"
  ,ZK027 AS "設備規格十二"
  ,ZK028 AS "設備規格十三"
  ,ZK029 AS "設備規格十四"
  ,ZK030 AS "設備規格十五"

FROM APSZK
