--CRPMG_資源群組設定單頭檔
SELECT
  ,MG001 AS "群組編號"
  ,MG002 AS "群組名稱"
  ,CASE 
   WHEN '1' THEN N'線別/廠商'
   WHEN '2' THEN N'機台'
   ELSE ""
   END AS "資源類型"
  ,MG004 AS "備註"

FROM CRPMG
