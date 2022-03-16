--APSMH_資源群組設定單身檔
SELECT
  ,MH001 AS "群組代號"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   ELSE ""
   END AS "資源類型"
  ,MH003 AS "資源代號"
  ,MH004 AS "資源名稱"
  ,MH005 AS "備註"

FROM APSMH
