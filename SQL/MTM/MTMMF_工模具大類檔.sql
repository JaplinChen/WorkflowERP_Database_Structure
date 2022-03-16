--MTMMF_工模具大類檔
SELECT
  ,MF001 AS "模具大類編號"
  ,MF002 AS "模具大類名稱"
  ,MF003 AS "模具大類描述"
  ,CASE 
   WHEN '0' THEN N'有限產能'
   WHEN '1' THEN N'無限產能'
   ELSE ""
   END AS "產能型態"
  ,MF005 AS "備註"

FROM MTMMF
